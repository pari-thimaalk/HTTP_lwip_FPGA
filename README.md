Networking on FPGA
-----
A full network stack implementation for the Urbana FPGA Board. I built this project with one classmate as part of my ECE385 final project at the University of Illinois, Urbana-Champaign. In doing so, we were the first students to connect an Urbana Board to the Internet. The project comprises the following:
* Link Layer Implemented via AxiEthernetLite IP
* MII to RMII converter via Analog Devices IP
* Network and Transport Layer implemented via lightweight IP (lwIP), an open-source TCP/IP stack
* HTTP application layer with DNS resolution and API authentication
* DHCP interfacing to obtain a dynamically assigned IP address for the FPGA Board
* Keyboard Driver that allows user to input a domain name and URI of their choice, forming a custom HTTP Get Request

The Urbana Board does not have an inbuilt RJ45 Ethernet Port or PHY, hence we used a LAN8720 for this project.

Set Up
-----
1. Connect LAN8720 to appropriate PMOD pins of Urbana Board
2. Connect Ethernet cable from LAN8720 to a working ethernet WAN port
3. Connect Board to PC for Serial Port output, used to display output of GET Request