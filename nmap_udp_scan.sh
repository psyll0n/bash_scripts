#!/bin/bash


# Perform UDP scan. Note that it is much slowere than TCP scanning. 


sudo nmap -n -Pn -sU 192.168.0.180 --top-ports 10 -sV --reason >> udp_scan_results.txt



