# AMi amazon machine image
# same concept as disk images 
# go to actions in instance and create an image - DO NOT CREATE a Template
# Instance volume means it will store it in a valume 
# default stroage types are EBS IBS etc can change the size here for our puropses no size change

# AMIs and scripts together for better esion control and auto scaling 
# EC2 instance running a db EC2 running application
# on one ec2 nginx is runnning on port3000
# extend the functionality with /posts page i.e. 3000/posts
# dummy data page supplied by a database which means its dynamic
#create a db vm
# install mongodb
# configure mongodb to allow a 
# log into app and db instance
# different mongo versions have different pgp/gpg key pairs
# using the key to get the key pair and use mongo
# **getting the key**: `wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -`
# **verifying the key and location**: `echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list`
# `sudo apt update` will now download mongo 
# to install necessary packages: `sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20`
# sudo nano /etc/mongod.conf allows you to edit the config and you can change bindIp to allow which ips can access it we can change it to 0.0.0.0
# sudo systemctl start mongod
# sudo systemctl enable mongod
# sudo systemctl status mongod - confirm its running
# in app ec2 instance add mongo env variable using IPsystem add 



# created an environment variable in order for it to be dropped into the code at any type i.e. DB_HOST
# export DB_HOST=mongodb://54.171.49.231:27017/posts

then npm installcd .