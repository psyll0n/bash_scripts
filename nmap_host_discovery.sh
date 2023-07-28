#!/bin/bash


# Perform a network scan and output only the hosts that are currently up

nmap -sn 192.168.0.0/24 -n | grep "Nmap scan" | cut -d" " -f5
