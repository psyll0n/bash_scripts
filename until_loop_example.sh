#!/bin/bash


host=${1:?Please enter the hostname/IP address of the machine}

until ssh $host; do

	echo "Machine not ready... Retrying"

done
