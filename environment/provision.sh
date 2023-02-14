#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927

echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# firstly update and upgrade the system
sudo apt-get update -y
sudo apt-get upgrade -y

#install mongodb
sudo apt-get install mongodb-org=3.2.20 -y

sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20


#sudo systemctl start mongod and enable
sudo systemctl status mongod
sudo systemctl enable mongod

#remove mongod config file
sudo rm /etc/mongod.conf

#change the config file to the one stored in repository
sudo cp environment/mongod.conf /etc/mongod.conf

#restart and enable mongod
sudo systemctl restart mongod
sudo systemctl enable mongod