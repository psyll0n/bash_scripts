#!/bin/bash

sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www

find /var/www -type d -exec sudo chmod 2775  {} \;
find /var/www -type f -exec sudo chmod 0664  {} \;