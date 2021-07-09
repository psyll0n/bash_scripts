#!/bin/bash


# Perform OS version detection scan with NMAP and send the output to a text file.

nmap -n -Pn -sS 192.168.0.0/24 --top-ports 10 -sV >> version_detection_scan.txt && echo "Scan completed! Please, check version_detection_scan.txt to find the results!"



