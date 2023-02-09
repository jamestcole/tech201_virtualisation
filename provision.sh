#!/bin/bash


# update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# Enable or Start Nginx
sudo systemctl enable nginx -y

sudo apt-get install python-software-properties
#nodejs
curl -sL https://deb.nodesource.com/setup_6.x |sudo -E bash -
sudo apt-get install nodejs -y

#install pm2
sudo npm install pm2 -gnpm install
npm install



#go to app folder
cd app/app/


#install nodejs
node app.js


# exit 
npm start