/*
 * tcp_com.c
 *
 *  Created on: 01-06-2021
 *      Author: DAQatlas
 */
#include "tcp_com.h"
//#include "main.h"

#define dcorr 256426847
#define kaliv 264652860
#define recok 273088441

unsigned char buffer[buffer_length];
const unsigned char *response_data = NULL;
u32_t response_len = 0;
short flag_accept_conn;
int flag_ready2sent;
int flag_senddata;
int flag_tcp_done;
int *datos_PL;

/* PCB ownership: both live only in this file (main.c held a separate
 * per-TU copy when these were static in the header). */
static struct tcp_pcb *listen_pcb;
static struct tcp_pcb *client_pcb;

/* Single-event sender state machine:
 * IDLE -> SENDING (payload+terminator queued in bounded chunks)
 *      -> DRAINING (all queued, waiting for peer ACKs) -> IDLE
 */
enum { S_IDLE, S_SENDING, S_DRAINING };
static int s_state = S_IDLE;
/* Sender-owned immutable payload copy: the pump reads only from here, so
 * recv_callback/command handlers may overwrite the global buffer mid-send. */
static u8_t s_snapshot[buffer_length];
static const u8_t *s_data;   /* -> s_snapshot, immutable until IDLE */
static u32_t s_len;          /* payload bytes */
static u32_t s_off;          /* payload bytes queued to lwIP */
static u8_t s_term_off;      /* terminator bytes queued, 0..3 */
static u32_t s_acked;        /* bytes ACKed by peer */

/* End-of-response marker, wire-compatible with the previous protocol. */
static const char TCP_TERM[3] = {'!', '#', '\n'};

static void sender_reset(void)
{
	s_state = S_IDLE;
	s_data = NULL;
	s_len = 0;
	s_off = 0;
	s_term_off = 0;
	s_acked = 0;
}

void rand_data()
{
	xil_printf("\nstart_rand_data\n");
	int i;
	datos_PL = (int*)malloc(sizeof(int)*1017);

	for(i = 0;i<1017*9;i++)//9*113 datos
	{
		datos_PL[i] = rand() %100 +1950;//Numeros entre 1950 y 2050 ""aleatorios""

	}

	xil_printf("\nend_rand_data \n");

}


void packer() //
{
	xil_printf("\nstart_packer\n");
	int i =0 ;
	char line[Char_per_line*N_lines]={'\0'};
	char line2[Char_per_line]={'\0'};//mandar de a 100 lineas
	//line2=(char*)malloc(sizeof(char)*321);
	//int Lines_saves = N_lines/N_lines; //Entero se redondea...0.5 por que son 2 bytes por char
	printf("\nLineas: %d\n", N_lines);

	for(i=0;i<N_lines;i++)
	{
	snprintf(line2,Char_per_line,"%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\n",datos_PL[9*i],datos_PL[9*i+1],datos_PL[9*i+2],datos_PL[9*i+3]
		,datos_PL[9*i+4],datos_PL[9*i+5],datos_PL[9*i+6],datos_PL[9*i+7],datos_PL[9*i+8]);
	//xil_printf("Linea %d: %s\n",i,line2);
	strcat(line,line2);
	//xil_printf("Linea %d: %s\n",i,line);
	}

	strncpy(buffer,line,N_lines*Char_per_line);
	xil_printf("\nend_packer\n");
}


unsigned long hash(unsigned char *str)
{
    unsigned long hash = 5381;
    int c;

    while (c = *str++)
        hash = ((hash << 5) + hash) + c; /* hash * 33 + c */

    return hash;
}


void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}

/*
 * Non-blocking send initiate: copies exactly len bytes from data into the
 * sender-owned snapshot, so the caller may reuse the source immediately
 * after this returns 0. len is authoritative: the sender never scans for
 * NUL, so binary payloads with embedded NUL or "!#\n" pass through intact.
 */
int transfer_data(const unsigned char *data, u32_t len)
{
	if (client_pcb == NULL) {
		xil_printf("TCP send refused: no client connected\n");
		return -1;
	}
	if (s_state != S_IDLE) {
		xil_printf("TCP send refused: previous send still in flight\n");
		return -1;
	}
	if (data == NULL) {
		xil_printf("TCP send refused: no response staged\n");
		return -1;
	}
	if (len > sizeof(s_snapshot)) {
		xil_printf("TCP send refused: payload %u > snapshot %u\n",
		           (unsigned)len, (unsigned)sizeof(s_snapshot));
		return -1;
	}
	memcpy(s_snapshot, data, len); /* copy once; terminator stays out */
	s_data = s_snapshot;
	s_len = len;
	s_off = 0;
	s_term_off = 0;
	s_acked = 0;
	s_state = S_SENDING;
	flag_ready2sent = 0;
	return 0;
}

/*
 * Bounded sender: at most one tcp_write + one tcp_output per call.
 * Called once per main-loop iteration; ACK processing between calls
 * (xemacif_input / tcp timers) frees send-buffer space.
 */
void tcp_send_pump(void)
{
	const u8_t *src;
	u32_t remaining;
	u16_t chunk;
	err_t err;

	if (s_state != S_SENDING || client_pcb == NULL)
		return;

	if (s_off < s_len) {
		src = s_data + s_off;
		remaining = s_len - s_off;
	} else {
		src = (const u8_t *)TCP_TERM + s_term_off;
		remaining = sizeof(TCP_TERM) - s_term_off;
	}

	chunk = (u16_t)LWIP_MIN(remaining, tcp_sndbuf(client_pcb));
	if (chunk == 0)
		return; /* send buffer full: retry next iteration, no wait */

	err = tcp_write(client_pcb, src, chunk, TCP_WRITE_FLAG_COPY);
	if (err == ERR_MEM)
		return; /* segment/pbuf pool pressure: retry next iteration */
	if (err != ERR_OK) {
		xil_printf("TCP send aborted: tcp_write error %d\n", err);
		tcp_client_drop();
		return;
	}

	if (s_off < s_len)
		s_off += chunk;
	else
		s_term_off += (u8_t)chunk;
	tcp_output(client_pcb);

	if (s_off == s_len && s_term_off == sizeof(TCP_TERM))
		s_state = S_DRAINING;
}

int tcp_com_response_busy(void)
{
	return s_state != S_IDLE;
}

/*
 * Close a client connection PCB: callbacks cleared first so no callback
 * (including tcp_err from tcp_abort) can re-enter with a dying PCB.
 * Not for the listening PCB (tcp_recv/tcp_sent are invalid on LISTEN).
 * Returns 1 if the PCB was aborted (caller must not touch it and, if in
 * callback context, must return ERR_ABRT), 0 if it closed cleanly.
 */
int tcp_server_close(struct tcp_pcb *pcb)
{
	err_t err;
	int aborted = 0;

	if (pcb != NULL) {
		tcp_arg(pcb, NULL);
		tcp_recv(pcb, NULL);
		tcp_sent(pcb, NULL);
		tcp_err(pcb, NULL);
		err = tcp_close(pcb);
		if (err != ERR_OK) {
			/* Free memory with abort */
			tcp_abort(pcb);
			aborted = 1;
		}
	}
	return aborted;
}

/* Returns 1 if the client PCB was aborted, else 0. */
int tcp_client_drop(void)
{
	int aborted = 0;

	if (client_pcb != NULL) {
		aborted = tcp_server_close(client_pcb);
		client_pcb = NULL;
		xil_printf("TCP client dropped\n\r");
	}
	sender_reset();
	flag_ready2sent = 0;
	flag_senddata = 0;
	tcp_cmd_state_reset();
	return aborted;
}

void tcp_server_shutdown(void)
{
	tcp_client_drop();
	if (listen_pcb != NULL) {
		tcp_close(listen_pcb); /* cannot fail on a LISTEN pcb */
		listen_pcb = NULL;
	}
}

/*
 * lwIP has already freed the PCB when this runs: only drop the
 * reference and reset state, never tcp_close/tcp_abort here.
 */
void tcp_server_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(err);
	client_pcb = NULL;
	sender_reset();
	flag_ready2sent = 0;
	flag_senddata = 0;
	tcp_cmd_state_reset();
	xil_printf("TCP connection aborted\n\r");
}

err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	static int connection = 1;

	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(err);
	xil_printf("*Conexion aceptada\n");

	/* new connection wins: a stale/dead client must not block reconnect */
	if (client_pcb != NULL)
		tcp_client_drop();

	client_pcb = newpcb;
	/* just use an integer number indicating the connection id as the
	   callback argument */
	tcp_arg(client_pcb, (void*)(UINTPTR)connection);
	tcp_recv(client_pcb, recv_callback);
	tcp_sent(client_pcb, sent_callback);
	tcp_err(client_pcb, tcp_server_err);
	/* nagle must be disabled per connection: it is not inherited from
	   the listening pcb */
	tcp_nagle_disable(client_pcb);

	sender_reset();
	tcp_cmd_state_reset();
	flag_accept_conn = 1;
	connection++;
	flag_ready2sent = 1;
	return ERR_OK;
}

int start_application()
{
	err_t err;
	unsigned port = PORT;
	struct tcp_pcb *pcb;

	flag_ready2sent = 0;
	flag_senddata = 0;
	flag_accept_conn = 0;
	sender_reset();

	/* create new TCP PCB structure */
	pcb = tcp_new();
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	err = tcp_bind(pcb, IP_ANY_TYPE, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(pcb, NULL);
	/* listen for connections */
	listen_pcb = tcp_listen(pcb);
	if (!listen_pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	/* specify callback to use for incoming connections */
	tcp_accept(listen_pcb, accept_callback);
	xil_printf("TCP server started @ port %d\n\r", port);
	flag_tcp_done=1;

	return 0;
}

/*
 * ACK accounting: len is the number of newly acknowledged bytes.
 * The send is complete only when payload + terminator are fully ACKed.
 */
err_t sent_callback(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(tpcb);

	if (s_state == S_IDLE)
		return ERR_OK;
	s_acked += len;
	if (s_state == S_DRAINING && s_acked >= s_len + sizeof(TCP_TERM)) {
		sender_reset();
		flag_ready2sent = 1;
	}
	return ERR_OK;
}
