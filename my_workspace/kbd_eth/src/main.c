/*
 * Copyright (C) 2018 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "microblaze_sleep.h"

#include "lw_usb/GenericMacros.h"
#include "lw_usb/GenericTypeDefs.h"
#include "lw_usb/MAX3421E.h"
#include "lw_usb/USB.h"
#include "lw_usb/usb_ch9.h"
#include "lw_usb/transfer.h"
#include "lw_usb/HID.h"

#include <xgpio.h>
// #include <stdio.h>

#if LWIP_IPV6==1
#include "lwip/ip6_addr.h"
#include "lwip/ip6.h"
#else

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
#endif

#define DEFAULT_IP_ADDRESS	"192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"
#endif /* LWIP_IPV6 */

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

void platform_enable_interrupts(void);
void start_application(char* domain_buf, char* uri_buf);
void transfer_data(void);
void print_app_header(void);
int finished_call;

extern HID_DEVICE hid_device;

static XGpio Gpio_hex;

static BYTE addr = 1; 				//hard-wired USB address
const char* const devclasses[] = { " Uninitialized", " HID Keyboard", " HID Mouse", " Mass storage" };

// I'm sure keyboards looked different back in the day,
// but I'm treating anything outside the "modern" style
// as an exception to the rule
const char row0[12] = "1234567890-=";
const char srow0[12] = "!@#$%^&*()_+";
const char row1[12] = "qwertyuiop[]";
const char srow1[12] = "QWERTYUIOP{}";
const char row2[11] = "asdfghjkl;'";
const char srow2[11] = "ASDFGHJKL:\"";
const char row3[10] = "zxcvbnm,./";
const char srow3[10] = "ZXCVBNM<>?";

/* key_to_ascii
 * This returns the ASCII represntation of a keycode (if applicable) or mutates `kbd_mods` to reflect a modifier key being active. Checking e.g. "Ctrl-L" must be done elsewhere.
 * Side effects: possibly mutates kbd_mods
 * Return: ASCII code of the logical key pressed, or the sentinel '0x00' if it's a modifier, extender, or an unsupported key.
 */
int shift;
int enter;
int domain_idx;
int uri_idx;
int backspace;

char key_to_ascii(int keycode) {
	// modifiers
	if(shift){
		switch(keycode){
			case 0x04: return 'A';
			case 0x05: return 'B';
			case 0x06: return 'C';
			case 0x07: return 'D';
			case 0x08: return 'E';
			case 0x09: return 'F';
			case 0x0A: return 'G';
			case 0x0B: return 'H';
			case 0x0C: return 'I';
			case 0x0D: return 'J';
			case 0x0E: return 'K';
			case 0x0F: return 'L';
			case 0x10: return 'M';
			case 0x11: return 'N';
			case 0x12: return 'O';
			case 0x13: return 'P';
			case 0x14: return 'Q';
			case 0x15: return 'R';
			case 0x16: return 'S';
			case 0x17: return 'T';
			case 0x18: return 'U';
			case 0x19: return 'V';
			case 0x1A: return 'W';
			case 0x1B: return 'X';
			case 0x1C: return 'Y';
			case 0x1D: return 'Z';
			case 0x1E: return '!';
			case 0x1F: return '@';
			case 0x20: return '#';
			case 0x21: return '$';
			case 0x22: return '%';
			case 0x23: return '^';
			case 0x24: return '&';
			case 0x25: return '*';
			case 0x26: return '(';
			case 0x27: return ')';
			case 0x2d: return '_';
			case 0x2e: return '+';
			case 0x2f: return '{';
			case 0x30: return '}';
			case 0x31: return '|';
			case 0x33: return ':';
			case 0x34: return '"';
			case 0x36: return '<';
			case 0x37: return '>';
			case 0x38: return '?';
			default:	return 0;
		}
	}else{
		switch(keycode) {
			case 0x04: return 'a';
			case 0x05: return 'b';
			case 0x06: return 'c';
			case 0x07: return 'd';
			case 0x08: return 'e';
			case 0x09: return 'f';
			case 0x0A: return 'g';
			case 0x0B: return 'h';
			case 0x0C: return 'i';
			case 0x0D: return 'j';
			case 0x0E: return 'k';
			case 0x0F: return 'l';
			case 0x10: return 'm';
			case 0x11: return 'n';
			case 0x12: return 'o';
			case 0x13: return 'p';
			case 0x14: return 'q';
			case 0x15: return 'r';
			case 0x16: return 's';
			case 0x17: return 't';
			case 0x18: return 'u';
			case 0x19: return 'v';
			case 0x1A: return 'w';
			case 0x1B: return 'x';
			case 0x1C: return 'y';
			case 0x1D: return 'z';
			case 0x1E: return '1';
			case 0x1F: return '2';
			case 0x20: return '3';
			case 0x21: return '4';
			case 0x22: return '5';
			case 0x23: return '6';
			case 0x24: return '7';
			case 0x25: return '8';
			case 0x26: return '9';
			case 0x27: return '0';
			// Adding common control characters
			case 0x2A: backspace = 1; return 0; // Backspace
			case 0x28: enter = 1; return 0; // Enter
			case 0x2C: return ' ';  // Space
			case 0x37: return '.';
			case 0x38: return '/';
			case 0x33: return ';';
			// case 0x34: return "'";
			case 0x2F: return '[';
			case 0x30: return ']';
			case 0x31: return '\\';
			case 0x2d: return '-';
			case 0x2e: return '=';
			case 0x3a: shift = 1;
			default:   return 0;    // Undefined scan codes
		}
	}
}

BYTE GetDriverandReport() {
	BYTE i;
	BYTE rcode;
	BYTE device = 0xFF;
	BYTE tmpbyte;

	DEV_RECORD* tpl_ptr;
	xil_printf("Reached USB_STATE_RUNNING (0x40)\n");
	for (i = 1; i < USB_NUMDEVICES; i++) {
		tpl_ptr = GetDevtable(i);
		if (tpl_ptr->epinfo != NULL) {
			xil_printf("Device: %d", i);
			xil_printf("%s \n", devclasses[tpl_ptr->devclass]);
			device = tpl_ptr->devclass;
		}
	}
	//Query rate and protocol
	rcode = XferGetIdle(addr, 0, hid_device.interface, 0, &tmpbyte);
	if (rcode) {   //error handling
		xil_printf("GetIdle Error. Error code: ");
		xil_printf("%x \n", rcode);
	} else {
		xil_printf("Update rate: ");
		xil_printf("%x \n", tmpbyte);
	}
	xil_printf("Protocol: ");
	rcode = XferGetProto(addr, 0, hid_device.interface, &tmpbyte);
	if (rcode) {   //error handling
		xil_printf("GetProto Error. Error code ");
		xil_printf("%x \n", rcode);
	} else {
		xil_printf("%d \n", tmpbyte);
	}
	return device;
}

void printHex (u32 data, unsigned channel)
{
	XGpio_DiscreteWrite (&Gpio_hex, channel, data);
}

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		 XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

struct netif server_netif;

#if LWIP_IPV6==1
static void print_ipv6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %s\n\r", inet6_ntoa(*ip));
}
#else
static void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if (!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if (!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if (!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);
}
#endif /* LWIP_IPV6 */

int main(void)
{
	init_platform();

	char domain_buf[30];
	char uri_buf[50];
	int domain_entered = 0;
	int uri_entered = 0;
	struct netif *netif;

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] = {
		0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	netif = &server_netif;
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

	/* Define this board specific macro in order perform PHY reset
	 * on ZCU102
	 */
#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif
	xil_printf("\r\n\r\n");
	xil_printf("-----lwIP RAW Mode TCP Client Application-----\r\n");

	/* initialize lwIP */
	lwip_init();
	xil_printf("finished lwip inti");
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address,
				PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return -1;
	}
	xil_printf("xemac add done");
#if LWIP_IPV6==1
	netif->ip6_autoconfig_enabled = 1;
	netif_create_ip6_linklocal_address(netif, 1);
	netif_ip6_addr_set_state(netif, 0, IP6_ADDR_VALID);
	print_ipv6("\n\rlink local IPv6 address is:",&netif->ip6_addr[0]);
#endif /* LWIP_IPV6 */
	netif_set_default(netif);
	xil_printf("default netif set");
	/* now enable interrupts */
	platform_enable_interrupts();
	xil_printf("platform interrupts enabled");
	/* specify that the network if is up */
	netif_set_up(netif);
	xil_printf("netif setup");
#if (LWIP_IPV6==0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	xil_printf("starting DHCP\n");
	dhcp_start(netif);
	dhcp_timoutcntr = 24;
	while (((netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(netif);

	if (dhcp_timoutcntr <= 0) {
		if ((netif->ip_addr.addr) == 0) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			assign_default_ip(&(netif->ip_addr),
					&(netif->netmask), &(netif->gw));
		}
	}

	/* print IP address, netmask and gateway */
#else
	assign_default_ip(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif
	print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif /* LWIP_IPV6 */
	xil_printf("\r\n");

	/* print app header */
	print_app_header();

//------------------USB INIT
	XGpio_Initialize(&Gpio_hex, XPAR_GPIO_USB_KEYCODE_DEVICE_ID);
   	XGpio_SetDataDirection(&Gpio_hex, 1, 0x00000000); //configure hex display GPIO
   	XGpio_SetDataDirection(&Gpio_hex, 2, 0x00000000); //configure hex display GPIO


   	BYTE rcode;
	BOOT_MOUSE_REPORT buf;		//USB mouse report
	BOOT_KBD_REPORT kbdbuf;

	BYTE runningdebugflag = 0;//flag to dump out a bunch of information when we first get to USB_STATE_RUNNING
	BYTE errorflag = 0; //flag once we get an error device so we don't keep dumping out state info
	BYTE device;

	xil_printf("initializing MAX3421E...\n");
	MAX3421E_init();
	xil_printf("initializing USB...\n");
	USB_init();
	//---------------END USB INIT
	int prev_codes[] = {0, 0};
	domain_idx = 0;
	backspace = 0;
	enter = 0;
	uri_idx = 0;
	uri_entered = 0;
	domain_entered = 0;
	int new_req = 1;
	memset(domain_buf, 0, sizeof(domain_buf));
	memset(uri_buf, 0, sizeof(uri_buf));
	while (1) {
		// xil_printf("."); //A tick here means one loop through the USB main handler
		MAX3421E_Task();
		USB_Task();
		if (GetUsbTaskState() == USB_STATE_RUNNING) {
			if (new_req == 1) {
				xil_printf("\n\nTime to make a new HTTP request. \ndomain: ");
				new_req = 0;
			}
			if (!runningdebugflag) {
				runningdebugflag = 1;
				device = GetDriverandReport();
			} else if (device == 1) {
				//run keyboard debug polling
				rcode = kbdPoll(&kbdbuf);
				if (rcode == hrNAK) {
					continue; //NAK means no new data
				} else if (rcode) {
					xil_printf("Rcode: ");
					xil_printf("%x \n", rcode);
					continue;
				}
				// xil_printf("keycodes: ");
				if (((kbdbuf.keycode[0] != prev_codes[0]) || (kbdbuf.keycode[1] != prev_codes[1]))) {
					prev_codes[0] = kbdbuf.keycode[0];
					prev_codes[1] = kbdbuf.keycode[1];
					if (!kbdbuf.keycode[0]) continue;
					// xil_printf("%x %x", kbdbuf.keycode[0], kbdbuf.keycode[1]);
					char typed0 = key_to_ascii(kbdbuf.keycode[0]);
					if (shift && !kbdbuf.keycode[1]){
						shift = 0;
						continue;
					}
					char typed1 = key_to_ascii(kbdbuf.keycode[1]);
					// xil_printf("%c %c", typed0, typed1);

					// if (shift && typed1 <= 'z' && typed1 => 'a') typed1 = typed1 - 32;
					// xil_printf("%c %c", typed0, typed1);
					if (!domain_entered) {
						if (backspace) {
							xil_printf("HAHAHAHA. you need to restart domain\n");
							memset(domain_buf, 0, sizeof(domain_buf));
							domain_idx = 0;
							shift = 0;
							backspace = 0;
							continue;
						}
						if (!enter && !backspace){
							if (!shift) domain_buf[domain_idx] = typed0;
							else domain_buf[domain_idx] = typed1;
							xil_printf("%c", domain_buf[domain_idx]);
							domain_idx++;
						}
						shift = 0;
						if (enter) {
							printf("%s\n", domain_buf);
							enter = 0;
							domain_idx = 0;
							// memset(domain_buf, 0, sizeof(domain_buf));
							domain_entered = 1;
						}
					}
					else {
						if (backspace) {
							xil_printf("HAHAHAHA. you need to restart uri\n");
							memset(uri_buf, 0, sizeof(uri_buf));
							uri_idx = 0;
							shift = 0;
							backspace = 0;
							continue;
						}
						if (!enter && !backspace){
							if (!shift) uri_buf[uri_idx] = typed0;
							else uri_buf[uri_idx] = typed1;
							xil_printf("%c", uri_buf[uri_idx]);
							uri_idx++;
						}
						shift = 0;
						if (enter) {
							printf("%s\n", uri_buf);
							enter = 0;
							uri_idx = 0;
							// memset(uri_buf, 0, sizeof(uri_buf));
							xil_printf("\n\nMaking HTTP Request\n");
							xil_printf("domain = %s\n uri = %s\n", domain_buf, uri_buf);
							start_application(domain_buf, uri_buf);
							// xil_printf("\r\n");
							
							finished_call = 0;
							int sleep_timer = 500;
							while (1) {
								if (TcpFastTmrFlag) {
									tcp_fasttmr();
									TcpFastTmrFlag = 0;
								}
								if (TcpSlowTmrFlag) {
									tcp_slowtmr();
									TcpSlowTmrFlag = 0;
								}

								MB_Sleep(1);
								xemacif_input(netif);
								transfer_data();
							}
//							asm volatile("ZUOFU:");
							xil_printf("\n http request resolved \n");
							memset(uri_buf, 0, sizeof(uri_buf));
							memset (domain_buf, 0, sizeof(domain_buf));
							domain_entered = 0;
							uri_entered = 0;
							enter = 0;
							shift = 0;
							backspace = 0;
							domain_idx = 0;
						}
					}
				}
				// for (int i = 0; i < 6; i++) {
				// 	xil_printf("%x ", kbdbuf.keycode[i]);
				// }
				//Outputs the first 4 keycodes using the USB GPIO channel 1
				// printHex (kbdbuf.keycode[0] + (kbdbuf.keycode[1]<<8) + (kbdbuf.keycode[2]<<16) + + (kbdbuf.keycode[3]<<24), 1);
				//Modify to output the last 2 keycodes on channel 2.
				// xil_printf("\n");
			}


		} else if (GetUsbTaskState() == USB_STATE_ERROR) {
			if (!errorflag) {
				errorflag = 1;
				xil_printf("USB Error State\n");
				//print out string descriptor here
			}
		} else //not in USB running state
		{

			// xil_printf("USB task state: ");
			// xil_printf("%x\n", GetUsbTaskState());
			if (runningdebugflag) {	//previously running, reset USB hardware just to clear out any funky state, HS/FS etc
				runningdebugflag = 0;
				MAX3421E_init();
				USB_init();
			}
			errorflag = 0;
		}

	}

	//-------------------------------STAHP
	
	/* start the application*/
	// start_application();
	// xil_printf("\r\n");

	// while (1) {
	// 	if (TcpFastTmrFlag) {
	// 		tcp_fasttmr();
	// 		TcpFastTmrFlag = 0;
	// 	}
	// 	if (TcpSlowTmrFlag) {
	// 		tcp_slowtmr();
	// 		TcpSlowTmrFlag = 0;
	// 	}

	// 	MB_Sleep(1);
	// 	xemacif_input(netif);
	// 	transfer_data();
	// }

	/* never reached */
	cleanup_platform();

	return 0;
}
