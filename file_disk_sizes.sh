FILENAME=file_sizes_$(date +%Y%m%d) 
echo $FILENAME #To make sure it has been correctrly named
sudo find /var/log -type f -size +100k | xargs ls -lh | awk '{ print $9 ": " $5 }' > $FILENAME
