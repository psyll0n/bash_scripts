#!/bin/bash

timestamp=$(date +%Y%m%d-%H%M%S)
while [[ $(du -k data.log | awk '{print $1}') -gt 100 ]]; do
	cp -p data.log data.log.$timestamp
	> data.log
done

