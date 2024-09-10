#!/bin/bash
ips=("192.168.0.200" "192.168.0.201" "192.168.0.202" "192.168.0.203")  # List of IPs
for ip in "${ips[@]}"; do
    echo "Pinging $ip..."
    ping -c 3 $ip > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "$ip is reachable"
    else
        echo "$ip is not reachable"
    fi
done
