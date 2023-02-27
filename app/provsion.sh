#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

# Install Nginx
sudo apt-get install nginx -y
#sudo systemctl start nginx 
sudo systemctl enable nginx -y

# install python
#sudo apt-get install python -y

# Remove default nginx configuration
sudo rm /etc/nginx/sites-available/default

# Copy the reverse proxy file containing the relevant code into that location
sudo cp app/reverse_proxy /etc/nginx/sites-available/default

# Restart nginx to confirm changes
sudo systemctl restart nginx -y

# enable the changes to nginx
#sudo systemctl enable nginx -y

sudo apt-get install python-software-properties

# Overwrite with desired version of nodejs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Install nodejs
sudo apt-get install nodejs -y

# Install pm2
sudo npm install pm2 -g

##
# Install app
cd app; npm install
# Seed the Database


# Environmental vabriable

# echo 'export DB_HOST=mongodb://192.168.10.150:27017/posts' >> ~/.bashrc 
# source .bashrc

# Enable reverse proxy
sudo systemctl restart nginx 

node seeds/seed.js
##