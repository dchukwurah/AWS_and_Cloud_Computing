#!/bin/bash

# update and upgrade
sudo apt update
sudo apt upgrade -y

#install nginx
sudo apt install nginx -y

#restart/start nginx
sudo systemctl restart nginx

#enable nginx
sudo systemctl enable nginx

# node js 12.x installed
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

# node package manager and node process manager installed
cd sparta_test_app
cd app
sudo npm install pm2 -g
npm install

# start app
node app.js