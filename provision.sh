#!/bin/bash


# Install Nginx
sudo apt-get install nginx -y

# Enable Nginx
sudo systemctl enable nginx -y

# Reverse proxy setup:
#
sudo apt-get install nginx -y
#sudo systemctl start nginx
sudo systemctl enable nginx -y
#sudo apt-get install python -y
#
# Remove default nginx configuration
sudo rm /etc/nginx/sites-available/default
# Copy the reverse proxy file containing the relevant code into that location

sudo cp app/reverse_proxy /etc/nginx/sites-available/default
# Restart nginx to confirm changes
sudo systemctl restart nginx -y

# Install nodejs dependencies
sudo apt-get install python-software-properties

# Overwrite with desired version of nodejs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Install nodejs
sudo apt-get install nodejs -y

# Install pm2
sudo npm install pm2 -g

# Install app
#cd app/; npm install