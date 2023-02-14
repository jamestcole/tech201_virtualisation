# Automating Database Environment

A will set up a provision.sh file in our environment directory for the database file , this will contain all the necessary steps for automating the database configuration


```
#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927

echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

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

```

The provision file will set up the keyserver, mongodb as well as updating and upgrading. This will also change the mongod.config server using the mongod.conf file in the environment directory. Finally mongod must be enabled and restarted for these changes to take effect.

```
# mongod.conf

# for documentation of all options, see:
#   http://docs.mongodb.org/manual/reference/configuration-options/

# Where and how to store data.
storage:
  dbPath: /var/lib/mongodb
  journal:
    enabled: true
#  engine:
#  mmapv1:
#  wiredTiger:
# where to write logging data.
systemLog:
  destination: file
  logAppend: true
  path: /var/log/mongodb/mongod.log

# network interfaces
net:
  port: 27017
  bindIp: 0.0.0.0


#processManagement:

#security:

#operationProfiling:

#replication:

#sharding:

## Enterprise-Only Options:

#snmp:
```

The only part of this file that has been changed is the bindIp which has been changed to 0.0.0.0 to make this network usable to the server.




