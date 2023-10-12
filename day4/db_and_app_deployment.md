# App and DB deployment using EC2 and MongoDB
# EC2 instance running a mongodb on port 27017 and an EC2 running application (nginx, nodejs) on port 3000
# extend the functionality with /posts page i.e. 3000/posts
# There is a dummy data page on our app supplied by a database which means its dynamic
# First create a db vm
# Then install mongodb
# After this configure mongodb to allow a 
# Once this is done log into app and db instance
# **Remember** different mongo versions have different pgp/gpg key pairs


## using the key to get the key pair and use mongo
# **getting the key**: `wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -` 
# If successful it should return `OK`
# **verifying the key and location**: `echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list`
# `sudo apt update` will now download mongo 
# to install necessary packages: `sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20`
# sudo nano /etc/mongod.conf allows you to edit the config, and you can change bindIp to allow which ips can access it we can change it to 0.0.0.0
# sudo systemctl start mongod
# sudo systemctl enable mongod
# sudo systemctl status mongod - confirm its running


## Connect the App EC2 to MongoDB instance by adding an environment variable.
## In the App use 
# created an environment variable in order for it to be dropped into the code at any type i.e. DB_HOST
# `export DB_HOST=mongodb://54.171.49.231:27017/posts`

# then npm install - this will set up the app and the connection to db where you should see a message of db cleared and db seeded

# then node app.js to start the app 
# access the app itself by using the link with the necessary port and /location e.g. http://52.31.236.70:3000/posts