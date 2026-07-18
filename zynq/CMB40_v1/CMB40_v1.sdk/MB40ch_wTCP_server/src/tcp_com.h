/*
 * tcp_com.h
 *
 *  Created on: 01-06-2021
 *      Author: DAQatlas
 */

#ifndef SRC_TCP_COM_H_
#define SRC_TCP_COM_H_

#include "lwip/tcp.h"
#include "xil_cache.h"
#include <string.h>
#include "netif/xadapter.h"

#include "platform.h"
#include "platform_config.h"
#include "xil_printf.h"
#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

#define Char_per_line 46
#define PBUF_LENGTH 50000
#define buffer_length 49900
#define PORT 6543

#define N_lines buffer_length/Char_per_line
extern unsigned char buffer[buffer_length];
extern short flag_accept_conn;
extern int flag_ready2sent;
extern int flag_senddata;
extern int flag_tcp_done;
/* Response staged for the next transfer_data() call. response_len is the
 * exact byte count (binary-safe: embedded NUL or "!#\n" bytes are payload).
 * Event handlers set it from the DMA ActualLen; text handlers stage it at
 * the formatting site. The sender never derives a length itself. */
extern const unsigned char *response_data;
extern u32_t response_len;
/* The listening and client PCBs are owned by tcp_com.c and are not
 * exposed here: interact through the functions below. */
extern int *datos_PL;

int start_application();

/* Non-blocking: copies exactly len bytes into the sender snapshot,
 * returns -1 if no client, busy, or len exceeds the snapshot. */
int transfer_data(const unsigned char *data, u32_t len);
/* Bounded sender, call once per main-loop iteration. */
void tcp_send_pump(void);
/* Non-zero while a response is queued/in flight (SENDING or DRAINING).
 * Callers must not stage a new response or consume another DMA event
 * while this is set. */
int tcp_com_response_busy(void);
/* Close the active client connection (if any) and reset sender state.
 * Returns 1 if the PCB was aborted (callback context must return ERR_ABRT). */
int tcp_client_drop(void);
/* Drop the client and close the listening PCB. */
void tcp_server_shutdown(void);
err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err);
err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
err_t sent_callback(void *arg, struct tcp_pcb *tpcb, u16_t len);
void tcp_server_err(void *arg, err_t err);
int tcp_server_close(struct tcp_pcb *pcb);
void packer();
/* Implemented in main.c: clears the command-line accumulator/queue owned
 * by recv_callback. tcp_com.c calls this whenever a client connection is
 * torn down (drop, err, takeover, shutdown) so no stale command state
 * survives into the next connection. */
void tcp_cmd_state_reset(void);
#endif /* SRC_TCP_COM_H_ */
