# Node JS operates on port 3000

### Ports

- The URL is a pointer to where you want to go.
- URL acts as a human readable IP address.
- An IP address is like a house number.

Some standard ports:

- http = port 80
- https = port 8080
- ssh = port 22
- node = port 3000 (usually)
# Front page, posts page
# What does our instance req to run app


- linux vm running ubuntu 18.04 
- web server right version
- the app itself
- make sure u go into folder that has the app itself 
- cd to app
- need a specific version of node.js
- curl will go away and retrieve something remember
- curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
- then sudo apt install nodejs -y
- can do node -v to check version
- sudo npm install pm2 -g
- npm means node package manager (similar to pip with python)
- pm2 is a process manager for node.js
- https://www.vultr.com/docs/how-to-manage-node-applications-with-pm2/
- remember to add your port 3000 for node.js
- npm install
- 