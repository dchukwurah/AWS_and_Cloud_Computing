#!/bin/bash

# update and upgrade
wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -

#install nginx
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#restart/start nginx
sudo apt update

#enable nginx
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20



# **getting the key**: `wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -`
# **verifying the key and location**: `echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list`
# `sudo apt update` will now download mongo
# to install necessary packages: `sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20`
# sudo nano /etc/mongod.conf allows you to edit the config and you can change bindIp to allow which ips can access it we can change it to 0.0.0.0
# sudo systemctl start mongod
# sudo systemctl enable mongod
# sudo systemctl status mongod - confirm its running

# created an environment variable in order for it to be dropped into the code at any type i.e. DB_HOST

app ip
# export DB_HOST=mongodb://54.171.49.231:27017/posts