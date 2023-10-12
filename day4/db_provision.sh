#!/bin/bash

# update and upgrade
sudo apt update
sudo apt upgrade -y

# update and upgrade
wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -

#install nginx
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#restart/start nginx
sudo apt update

#enable nginx
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20