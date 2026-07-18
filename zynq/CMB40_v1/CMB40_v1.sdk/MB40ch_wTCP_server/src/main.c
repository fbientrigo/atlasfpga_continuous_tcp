/******************************************************************************
*
* Copyright (C) 2009 - 2017 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include <string.h>
#include "xparameters.h"
#include "main.h"
#include "xil_printf.h"
/* defined by each RAW mode application */



//void print_app_header();

void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif
int dac_set = 0;
extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;
int rst_fifo = 0;
int en_adc_clk,en_adc;
unsigned char buffer_test[] = "001\t2001\t2002\t2003\t2004\t2005\t2006\t2007\t2008\t2009\n";
int Data_send[1000];
int cpld_ack,send_cpld;
// Datos para la tabla hash //Estos valores cambian a cada rato...buscar otro metodo.
int rst_system = 0;
int adclk_cnt,lclk_cnt;
extern int flag_ready2sent;
extern int flag_sentdata ;
int counter_send;
int en_busy = 0;
int soft_trigg_en = 0;
int shutdown = 0;
int max_count_send = 3000;
int read_GPIO = 0;
int rst_drs4 = 0;
u8 clk_count;
u32 gpio_read;
int DTAP_meas = 0;
u32 delay_GPIO = 4;
int update_delay = 0;
int en_A = 0;
void init_DACs();
/* Stage the formatted text in the global buffer as the next response.
 * Text only: the bounded scan measures a string this code just wrote.
 * Event handlers set response_data/response_len directly from the DMA
 * ActualLen and must never come through here. */
static void stage_text_response(void)
{
	response_data = buffer;
	response_len = (u32_t)strnlen((const char *)buffer, buffer_length);
	flag_senddata = 1;
}
/* Stage the shared #NO_EVENT / #DMA_ERROR control responses used by both
 * -get_event and -get_event_v2 (control responses keep legacy framing). */
static void stage_dma_control_response(dma_event_result_t result)
{
	if (result == DMA_EVENT_EMPTY) {
		memcpy(buffer, "#NO_EVENT", sizeof("#NO_EVENT"));
	} else {
		snprintf((char *)buffer, buffer_length,
				"#DMA_ERROR:%d", (int)result);
	}
	stage_text_response();
}
void DRS4_restart_ROI();
void shutdown_all();
static void cmd_queue_pump(void);
int main()
{
	//define gain bits
	CPLD_gain_mux = 1; // 1-> RF1: -22dB, 2->RF2: -10dB. 2 bits
	ip_addr_t ipaddr, netmask, gw;
	int Status;
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	echo_netif = &server_netif;
    xil_printf("\n---------Start DAQ MB program---------\n");
	//init_platform();
	Status = setup_dma_and_timer();
	xil_printf("\n\n--------Status setup DMA and timer: %d--------\n\n ",Status);

	flag_tcp_done = 0 ;


    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;

	print_app_header();

	lwip_init();
	Status =  setup_interrupt_dma_timer();
	xil_printf("\n\n-----Status setup interrupts: %d-----\n\n ",Status);
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}

	netif_set_default(echo_netif);

	/* now enable interrupts */

    //platform_enable_interrupts(); Reemplazada por la funcion siguiente

	/* specify that the network if is up */
	netif_set_up(echo_netif);

	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(echo_netif);
	dhcp_timoutcntr = 24;

	while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(echo_netif);

	if (dhcp_timoutcntr <= 0)
	{
		if ((echo_netif->ip_addr.addr) == 0)
		{
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(echo_netif->ip_addr),  192, 168,   1, 10);
			IP4_ADDR(&(echo_netif->netmask), 255, 255, 255,  0);
			IP4_ADDR(&(echo_netif->gw),      192, 168,   1,  1);
		}
	}

	ipaddr.addr = echo_netif->ip_addr.addr;
	gw.addr = echo_netif->gw.addr;
	netmask.addr = echo_netif->netmask.addr;
	print_ip_settings(&ipaddr, &netmask, &gw);

	/* start the application (web server, rxtest, txtest, etc..) */
	start_application();

	setup_system();


    xil_printf("buffer length %d \n \n",strlen(buffer));
	//packer();
	/* receive and process packets */
	xil_printf("ip and port --> %d.%d.%d.%d %d\n", ((int)ipaddr.addr)&0xff,((int)ipaddr.addr>>8)&0xff, ((int)ipaddr.addr>>16)&0xff, ((int)ipaddr.addr>>24)&0xff, PORT);

    Status = loop_routine();
	if (Status != XST_SUCCESS) {
		xil_printf("loop routine Failed\r\n");
		return XST_FAILURE;
	}

	print("---Exiting main---\n\r");

  
	/* never reached */
	cleanup_platform();

	return 0;
}

void shutdown_all()
{
	DRS4_Safe_shutdown();
	tcp_server_shutdown();
	CPLD_mezz_power_off((u8)7);
}
int setup_system ()
{
	int Status;
	u32 cpld_status;
	XUartPs_Config *Config;

	xil_printf("---setting up system---\n\r");

	Status = XGpio_Initialize(&gpio, GPIO_DEVICE_ID);
	Status = XGpio_Initialize(&gpio1,XPAR_GPIO_1_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("#ERROR#: Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	XGpio_DiscreteClear(&gpio,2,0xffffffff); // All output to 0
	Status = XGpio_DiscreteRead(&gpio,1);
	xil_printf("Status GPIO: %d\r\n", Status);

	/*
	 *
	 * Debug section, all mezzanine will be broadcast to test CMB40 for first time
	 *
	 *
	 */
	//First, sent CPLD to init status of all mezzanines.
	CPLD_mezz_power_off((u8)7);
	usleep(1000);
	CPLD_mezz_mux = 1; //7 Broadcast conf for DRS4.
	CPLD_SPI_mezz_sel = 1;//b"111" to enable ctrl signals go to the 5 mezzanine boards
	//Initialization of Mezzanines boards using CPLD

	Mezz_CPLD_init(CPLD_SPI_mezz_sel);

	//Initi and setup of DACs. Enable 2.5 V ref
	xil_printf("Initialize DACs\n");
	XGpio_DiscreteClear(&gpio,2,DAC_nCLR_mask);
	usleep(500);
	XGpio_DiscreteSet(&gpio,2,DAC_nCLR_mask);
	usleep(500);
	init_DACs();
	setup_DACs();
	xil_printf("Setup DACs voltages\n");
	xil_printf("Initialize SPI of ADC\n");
	//ADC_SPI_init();
	Xil_In32(XPAR_CPLD_CTRL_0_S00_AXI_BASEADDR+8);
   	//Fifo resets
	XGpio_DiscreteClear(&gpio,2,rst_FIFO_mask);
	usleep(2000);
	XGpio_DiscreteSet(&gpio,2,rst_FIFO_mask);

	//DRS4 init.

	DRS4_Safe_shutdown();
	usleep(100);
	DRS4_restart_ROI();
	usleep(500);
	DRS4_restart_ROI();
	usleep(2000);

	//default trigger configuration.
	//0 enable auto trigger with a counter on FPGA. 1 Disable.
	XGpio_DiscreteSet(&gpio,2,soft_trigger_mask);
	XGpio_DiscreteClear(&gpio,2,trigg_function_mask);// disable trigger function
	XGpio_DiscreteSet(&gpio,2,trigg_function_mask&(1<<trigg_function_offset));// 001: OR, 010: AND, others: none
	XGpio_DiscreteSet(&gpio,2,trigg_input_mask);


	XGpio_DiscreteSet(&gpio1,1,delay_GPIO);
	xil_printf("Cpld status: %d \n\n",cpld_status);


	//Start of ADC ref clk
	XGpio_DiscreteSet(&gpio,2,ADC_refclk_mask);

	//wait 10 ms after refclk is enable.
	usleep(10000);
	//Chip select of all ADC enable for SPI comm
	CPLD_ADC_nCS = 0;
	cpld_status = write_CPLD_signals();
	//xil_printf("ADC nCS pull down: Cpld status: %d \n\n",cpld_status);

	//ADC setup register routine here!

	XGpio_DiscreteSet(&gpio,2,busy_trigger_mask);

   	return XST_SUCCESS;
}

void ADC_SPI_init()
{
	//u32 AXI_ADC_write_reg (u16 ptr_tbw, u16 data)
	u16 pt_addr;
	u16 spi_data;
	u32 result;
	//First, enable LVDS on ADS5287.
	pt_addr = 0x0042;
	spi_data = 0x8001; //Enable diff_CLK for LVDS. Default is disable.

	result = AXI_ADC_write_reg(pt_addr,spi_data);
	xil_printf("ADC SPI R:%u", result);


}
void init_DACs()
{
	u32 command_access_b,data_byte;

	command_access_b = 0x80; //8 bits
	data_byte = 0x001; // 12 bits
	//DAC 0
	write_dac(dac_baseaddr,command_access_b,data_byte,0);
	usleep(1000);
	while(is_active(dac_baseaddr)==1); // Espero que modulo DAC termine rutina de env�o de datos

	//DAC 1
	write_dac(dac_baseaddr,command_access_b,data_byte,1);
	usleep(1000);

}

int setup_DACs(void){
	  	usleep (1000);
	  	//DAC 0 ser� el del DRS4
	  	//DAC 1 ser� el del comparador para triggers
	  	for (u32 i=0; i<8; i++){
			write_dac_voltage(dac_baseaddr,i,dac_values[i],0);
			while(is_active(dac_baseaddr)==1);
	 	  	usleep (1000);
	  	  // include error returning   here
	  	}
	  	usleep(2000);
	  	//Actualizo DAC1;
	  	for (u32 i=0; i<8; i++){
			write_dac_voltage(dac_baseaddr,i,trigger_values[i],1);
			while(is_active(dac_baseaddr)==1);
	 	  	usleep (1000);
	  	  // include error returning   here
	  	}
	   	// include error returning   here

		return XST_SUCCESS;
}

int loop_routine(void){

	xil_printf("---------------------\n\n starting command mode, no more than 15 characters per line!\n");
	while (1) {

				if (TcpFastTmrFlag) {
					tcp_fasttmr();
					TcpFastTmrFlag = 0;

				}
				if (TcpSlowTmrFlag) {
					tcp_slowtmr();
					TcpSlowTmrFlag = 0;
					if(start_send_event==1 && c_glob_ev <=1 && flag_ready2sent)
					{
						process_n_send_data(c_glob_ev,1);
						/* legacy path: buffer holds a NUL-padded copy */
						stage_text_response();
						usleep(100);
						if(c_glob_ev >= 1)
						{
							flag_senddata = 0 ;
							start_send_event = 0;
						}
						c_glob_ev++;
					}

							//Cuando los flags esten habilitados se envian los datos con la funcion transfer_data()
							//Deberia suponer que esto se ejecutar� a un tiempo suficiente?
				}

				if(flag_senddata && flag_ready2sent)
									{
										flag_senddata = 0;

										flag_ready2sent = 0;

										transfer_data(response_data, response_len);

									}
				xemacif_input(echo_netif); //recepcion de paquetes constantemente
				tcp_send_pump(); //bounded: at most one tcp_write per iteration
				cmd_queue_pump(); //bounded: dispatch queued commands once the response slot is free


				if (RecvBuffer[0] == '-' && RecvBuffer[1] == 'q') {


					memset(buffer, 0, strlen(buffer));
					snprintf(buffer,40,"\nDRS4 was shuted down... \nEnd program");
					stage_text_response();
					shutdown_all();
					break;
				}
				if(soft_trigg_en == 1)
				{
					soft_trigg_en = 0;
					if(soft_trig == 1)
								{
									XGpio_DiscreteClear(&gpio,2,soft_trigger_mask);
									soft_trig = 0;
								}
									else
								{
									soft_trig = 1;
									XGpio_DiscreteSet(&gpio,2,soft_trigger_mask);
								}

				}
				if(shutdown==1)
					shutdown_all();
				if(send_cpld == 1)
				{
					send_cpld = 0;
					write_CPLD_signals();
				}
				if(en_busy==1)
				{
					en_busy = 0;
					XGpio_DiscreteClear(&gpio,2,busy_trigger_mask);
				}

				if(read_GPIO==1)
				{
					read_GPIO = 0;

					gpio_read = XGpio_DiscreteRead(&gpio,1);
					adclk_cnt = Xil_In32(AXI_ADC_BaseAddress+8);
					lclk_cnt = (adclk_cnt >> 16) & 0xffff ;
					adclk_cnt = adclk_cnt & 0xffff;
					clk_count = gpio_read >>23;
					xil_printf("clk count of ADCLK is %u,\t total read %u\n",clk_count,gpio_read);
					xil_printf("ADclk %d\tLCLK: %d",adclk_cnt, lclk_cnt);

				}
				if(rst_fifo==1)
				{
						XGpio_DiscreteClear(&gpio,2,rst_FIFO_mask);
						usleep(2000);
				}
				else if(rst_fifo == 0)
					XGpio_DiscreteSet(&gpio,2,rst_FIFO_mask);
				if(dac_set ==1)
				{
					dac_set = 0;
					init_DACs();
					setup_DACs();
				}
				if(DTAP_meas ==1)
				{
					DTAP_meas = 0;
					xil_printf("DTAP: %.3f - %.3f - %.3f - %.3f - %.3f\n",DRS4_DTAP_meas((int)1),DRS4_DTAP_meas((int)2)
							,DRS4_DTAP_meas((int)3),DRS4_DTAP_meas((int)4),DRS4_DTAP_meas((int)5));

				}
				if(rst_system == 1)
				{
					rst_system = 0;
					setup_system();
				}
				if(rst_drs4 == 1)
				{
					//rst_drs4 = 0;
					usleep(1000000);
					DRS4_restart_ROI();
				}
				if(update_delay ==1)
				{
					update_delay = 0;
					XGpio_DiscreteWrite(&gpio1,1,delay_GPIO);
				}
				if(en_A == 1)
					XGpio_DiscreteSet(&gpio,2,en_A_vec);
				else if(en_A == 0)
					XGpio_DiscreteClear(&gpio,2,en_A_vec);


	}
	return XST_SUCCESS;
}
void DRS4_restart_ROI(){
	int state;
	int cpld_status;
	CPLD_denable = 0;
	cpld_status = write_CPLD_signals();
   	DRS4_Init();
   	state = get_states_machine();
   	xil_printf("#INFO#: DRS4  init: state is %x\n", state);

   	DRS4_config();
   	CPLD_denable = 1;
   	cpld_status = write_CPLD_signals();
   	//Once denable is high, lets proceed with the DRS4 init and readout.
   	DRS_start_adq = 1;
   	write_DRS4_control_signals();
   	state = get_states_machine();
   	DRS4_start_ROI();
   	state = get_states_machine();
   	xil_printf("#INFO#: DRS4 started ROI: state is %x\n", state);

}


/* ---- Command-line accumulator (blocker #2: TCP command fragmentation) ----
 * Static, bounded, no heap. Wire commands are newline-terminated; complete
 * lines are matched exactly (never by prefix) and dispatched in order.
 * A single response-slot queue defers a command instead of overwriting a
 * response that is staged or still in flight. */
#define CMD_LINE_MAX 32
#define CMD_QUEUE_DEPTH 4

static char cmd_line[CMD_LINE_MAX];
static unsigned cmd_line_len = 0;
static int cmd_line_overflow = 0;

static char cmd_queue[CMD_QUEUE_DEPTH][CMD_LINE_MAX];
static unsigned cmd_queue_len[CMD_QUEUE_DEPTH];
static unsigned cmd_queue_head = 0;
static unsigned cmd_queue_count = 0;

/* Called by tcp_com.c on any connection teardown/takeover so no command
 * left over from a prior connection is dispatched against a new one. */
void tcp_cmd_state_reset(void)
{
	cmd_line_len = 0;
	cmd_line_overflow = 0;
	cmd_queue_head = 0;
	cmd_queue_count = 0;
}

static int response_busy(void)
{
	return flag_senddata || tcp_com_response_busy();
}

static int line_equals(const char *line, unsigned len, const char *cmd)
{
	unsigned clen = (unsigned)strlen(cmd);
	return len == clen && memcmp(line, cmd, clen) == 0;
}

/* Commands eligible for the legacy (no-newline) compatibility fast path:
 * exact static commands only. "-get_event" is excluded because it is a
 * strict prefix of "-get_event_v2"; parameterized commands are excluded
 * because their complete argument cannot be known without a terminator. */
static int is_unambiguous_known_command(const char *line, unsigned len)
{
	static const char *const cmds[] = {
		"-DRS4GetState", "-Shutdown", "-DRS4Restart", "-get_event_v2",
		"-check", "-VETO 0", "-cleanup", "-get_trig_state",
		"-get_gpio_conf", "-h", "-soft_trig", "-auto_trig_off",
		"-auto_trig_on", "-rst_fifo"
	};
	unsigned i;

	for (i = 0; i < sizeof(cmds) / sizeof(cmds[0]); i++)
		if (line_equals(line, len, cmds[i]))
			return 1;
	return 0;
}

/* Executes exactly one command line (no trailing newline). Never called
 * while a response is staged or the sender is SENDING/DRAINING. */
static void dispatch_command(const char *line, unsigned len)
{
	int value = 0;
	int state = 0;

	if (line_equals(line, len, "-DRS4GetState")) { // state return
		state = get_states_machine();
		xil_printf("DRS4 state is %x\n", state);
		snprintf(buffer,40,"DRS4 state is %x\n", state);
		stage_text_response();

	}
	if (line_equals(line, len, "-Shutdown")) { //DRS4 safe shutdown
		DRS4_Safe_shutdown();
		state = get_states_machine();
		xil_printf("DRS4 was shuted down, state is %x\n", state);
		snprintf(buffer,40,"\nDRS4 was shuted down, state is %x\n", state);
		stage_text_response();
	}
	if (line_equals(line, len, "-DRS4Restart")) { //DRS4 safe restart
		DRS4_restart_ROI();

		snprintf(buffer,40,"DRS4 restarting\n");
		stage_text_response();

	}
	if (line_equals(line, len, "-get_event")) {
		u32 event_len = 0;
		dma_event_result_t result =
				dma_copy_next_event(buffer, buffer_length - 1, &event_len);

		if (result == DMA_EVENT_OK) {
			buffer[event_len] = '\0';
			/* exact DMA ActualLen: embedded NUL bytes are payload.
			 * Legacy framing stays terminator-delimited, so a payload
			 * containing "!#\n" is only unambiguous through v2. */
			response_data = buffer;
			response_len = event_len;
			flag_senddata = 1;
		} else {
			stage_dma_control_response(result);
		}
	}
	if (line_equals(line, len, "-get_event_v2")) {
		/* Response: "#EVENT:<decimal ActualLen>\n" + payload, then the
		 * pump appends the trailing "!#\n" terminator as usual. */
		enum { V2_HDR_MAX = sizeof("#EVENT:4294967295\n") - 1 };
		char hdr[V2_HDR_MAX + 1];
		u32 event_len = 0;
		int hdr_len;
		dma_event_result_t result = dma_copy_next_event(
				buffer + V2_HDR_MAX,
				buffer_length - V2_HDR_MAX - 1, &event_len);

		if (result == DMA_EVENT_OK) {
			hdr_len = snprintf(hdr, sizeof(hdr), "#EVENT:%u\n",
					(unsigned)event_len);
			/* keep the global buffer NUL-terminated for the
			 * strlen-based memset pattern used by text handlers */
			buffer[V2_HDR_MAX + event_len] = '\0';
			memcpy(buffer + V2_HDR_MAX - hdr_len, hdr, hdr_len);
			response_data = buffer + V2_HDR_MAX - hdr_len;
			response_len = (u32)hdr_len + event_len;
			flag_senddata = 1;
		} else {
			stage_dma_control_response(result);
		}
	}
	if (line_equals(line, len, "-check")) {
//					state = XGpio_DiscreteRead(&gpio,1);
		xil_printf("\n# event buffer = %x\n", RxDone);
//					trigger_counter = (state >> 12) & 0xFFF;
		snprintf(buffer,40,"\n# event buffer = %x\n", RxDone);
		stage_text_response();
	}

	if (line_equals(line, len, "-VETO 0")) {
		xil_printf("\n# VETO set to FALSE");
		snprintf(buffer,40,"\n# VETO set to FALSE");
		stage_text_response();
		user_VETO = FALSE;
		XGpio_DiscreteClear(&gpio,2,VETO_mask);
		//gpio_write_reg(VETO_mask,VETO_offset,0);
	}
	if (line_equals(line, len, "-cleanup")) {
		xil_printf("\n# cleaning up the event buffer");
		snprintf(buffer,40,"\n# cleaning up the event buffer");
		stage_text_response();
		cleanup_buffer();
	}
	if (line_equals(line, len, "-get_trig_state")) {
		state = XGpio_DiscreteRead(&gpio,1);
		xil_printf("\n# state = %x\n", state >> 24);
		snprintf(buffer,40,"\n# state = %x\n", state >> 24);
		stage_text_response();
	}
	if (line_equals(line, len, "-get_gpio_conf")) {
				state = XGpio_DiscreteRead(&gpio,2);
				xil_printf("\n# state = %x\n", state);
				snprintf(buffer,40,"\n# state = %x\n", state);
				stage_text_response();
	}
	if (len >= strlen("-set_n_event ") &&
			memcmp(line, "-set_n_event ", strlen("-set_n_event ")) == 0) {
		value = atoi(line + strlen("-set_n_event "));
		if (value > 1024) {
			n_events = 1024;
		}else if (value < 1) {
			n_events = 1;
		} else{
			n_events = value;
		}
		snprintf(buffer,40,"\n# n events set to  = %d", n_events);
		stage_text_response();
		xil_printf("\n# n events set to  = %d", n_events);
	}

	if (line_equals(line, len, "-h")) { //return a list of commands
		snprintf(buffer,372,"\nList of available commands:\n"
				"-DRS4Shutdown\n"
				"-DRS4Restart\n"
				"-DRS4GetState\n"
				"-q : exit and shutdown system\n"
				"-get_event : get the event\n"
				"-get_event_v2 : get one event, length-framed\n"
				"-check : check status of the buffer\n"
				"-auto_trig_on : set auto trigger on, every 7s app.\n"
				"-auto_trig_off : set auto trigger off\n");

		xil_printf(buffer);
		stage_text_response();
	}
	if (line_equals(line, len, "-soft_trig")) {

		snprintf(buffer,40,"\nSoft_trig command\n");
		stage_text_response();
		usleep(10);
		if(soft_trig == 1)
		{
			XGpio_DiscreteClear(&gpio,2,soft_trigger_mask);
			soft_trig = 0;
		}
			else
		{
			soft_trig = 1;
			XGpio_DiscreteSet(&gpio,2,soft_trigger_mask);
		}

	}
	if (line_equals(line, len, "-auto_trig_off")) {
				snprintf(buffer,40,"\nSoft_trig is OFF\n");
				stage_text_response();
				usleep(10);
				soft_trig = 1;
				XGpio_DiscreteSet(&gpio,2,soft_trigger_mask);//assert reset in FIT, interrupt disable
	}
	if (line_equals(line, len, "-auto_trig_on")) {
						snprintf(buffer,40,"\nAUTO trigger on. Every 7s app.\n");
						stage_text_response();
						usleep(10);
						soft_trig = 0;
						XGpio_DiscreteClear(&gpio,2,soft_trigger_mask); //clear reset in FIT, interrupt enabled
	}
	if (line_equals(line, len, "-rst_fifo")) {

		XGpio_DiscreteSet(&gpio,2,rst_FIFO_mask);
		snprintf(buffer,40,"\nManual trigger RO\n");
		stage_text_response();
		usleep(10);
		XGpio_DiscreteClear(&gpio,2,rst_FIFO_mask);


	}
}

static void cmd_enqueue(const char *line, unsigned len)
{
	unsigned idx;

	if (cmd_queue_count >= CMD_QUEUE_DEPTH) {
		xil_printf("TCP cmd queue full, command dropped\n");
		return;
	}
	idx = (cmd_queue_head + cmd_queue_count) % CMD_QUEUE_DEPTH;
	memcpy(cmd_queue[idx], line, len);
	cmd_queue_len[idx] = len;
	cmd_queue_count++;
}

/* Drains queued commands as soon as the response slot frees up. Safe to
 * call from recv_callback and from the main loop (no waits inside). */
static void cmd_queue_pump(void)
{
	while (cmd_queue_count > 0 && !response_busy()) {
		dispatch_command(cmd_queue[cmd_queue_head], cmd_queue_len[cmd_queue_head]);
		cmd_queue_head = (cmd_queue_head + 1) % CMD_QUEUE_DEPTH;
		cmd_queue_count--;
	}
}

/* A complete command line is ready: run it now if the response slot is
 * free and no older command is still queued ahead of it, else buffer it
 * (never silently dropped, and never overwrites an in-flight response). */
static void cmd_submit(const char *line, unsigned len)
{
	if (cmd_queue_count == 0 && !response_busy())
		dispatch_command(line, len);
	else
		cmd_enqueue(line, len);
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	struct pbuf *q;
	u16_t copied;

	/* remote side closed the connection: discard any partial command */
	if (!p) {
		tcp_cmd_state_reset();
		/* if the close aborted THIS pcb, we must not touch it again
		 * and must tell lwIP with ERR_ABRT */
		if (tcp_client_drop())
			return ERR_ABRT;
		return ERR_OK;
	}

	if (err != ERR_OK) {
		tcp_cmd_state_reset();
		pbuf_free(p);
		tcp_client_drop();
		return err;
	}

	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->tot_len);

	/* Legacy "-q" detection snapshot: unchanged from the prior behavior,
	 * independent of the command-line accumulator below. */
	copied = pbuf_copy_partial(p, RecvBuffer, 16, 0);
	RecvBuffer[copied] = 0;
	xil_printf("strlen:%d, mess:%s\n",strlen(RecvBuffer),RecvBuffer);

	/* Compatibility fast path: this callback carries no newline, no line
	 * is already accumulating, this pbuf's entire content fit in the
	 * snapshot above (nothing truncated), and it is exactly one
	 * unambiguous known command. Anything else falls through to the
	 * newline-framed accumulator so a split command is never misfired. */
	if (cmd_line_len == 0 && !cmd_line_overflow &&
			p->tot_len == copied &&
			memchr(RecvBuffer, '\n', copied) == NULL &&
			is_unambiguous_known_command((const char *)RecvBuffer, copied)) {
		cmd_submit((const char *)RecvBuffer, copied);
		pbuf_free(p);
		return ERR_OK;
	}

	/* Append every byte of every pbuf in the chain, across callbacks,
	 * splitting complete lines on '\n' and preserving the trailing
	 * incomplete line for the next callback. */
	for (q = p; q != NULL; q = q->next) {
		const unsigned char *src = (const unsigned char *)q->payload;
		u16_t i;

		for (i = 0; i < q->len; i++) {
			unsigned char c = src[i];

			if (c == '\n') {
				if (!cmd_line_overflow)
					cmd_submit(cmd_line, cmd_line_len);
				cmd_line_len = 0;
				cmd_line_overflow = 0;
				continue;
			}
			if (cmd_line_overflow)
				continue;
			if (cmd_line_len >= CMD_LINE_MAX - 1) {
				cmd_line_overflow = 1;
				xil_printf("TCP cmd line too long, discarded\n");
				continue;
			}
			cmd_line[cmd_line_len++] = (char)c;
		}
	}

	pbuf_free(p);

	return ERR_OK;
}

float DRS4_DTAP_meas(int sel_mezz)
{
	u32 cnt_value = 0;
	float DTAP_freq = 0.0;
	switch(sel_mezz)
	{
		case 1 :
			cnt_value = Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG0_OFFSET) & 0x000000ff;
			break;
		case 2:
			cnt_value = (Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG0_OFFSET)>>15) & 0x000000ff;
			break;
		case 3 :
			cnt_value = Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG1_OFFSET) & 0x000000ff;
			break;
		case 4:
			cnt_value = (Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG1_OFFSET)>>15) & 0x000000ff;
			break;
		case 5 :
			cnt_value = Xil_In32(XPAR_CLK_MON_0_S00_AXI_BASEADDR+CLK_MON_S00_AXI_SLV_REG2_OFFSET) & 0x000000ff;
			break;
		default:
			xil_printf("Not a valid value for DTAP meass \n");
			return 0.0;

	}
	DTAP_freq = (float)cnt_value/8192.0*100.0;
	return(DTAP_freq);

}
