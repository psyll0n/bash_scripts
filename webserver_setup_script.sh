#!/bin/bash

# Update package list
sudo apt update

# Install Apache
sudo apt install -y apache2

# Start Apache
sudo systemctl start apache2

# Add user to Apache group
sudo usermod -a -G www-data $USER

# Set proper permissions
sudo chown -R $USER:www-data /var/www/html
sudo chmod -R 2775 /var/www/html

# Set permissions for directories
find /var/www/html -type d -exec sudo chmod 2775 {} \;

# Set permissions for files
find /var/www/html -type f -exec sudo chmod 0664 {} \;
