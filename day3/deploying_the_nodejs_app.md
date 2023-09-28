# Deploying the node JS app


## Setting up EC2

Follow the steps in **ec2_setup_ngix_deploy.md** in day2 folder to set up your EC2 machine.
This time, add port 3000 via a custom protocol (TCP) to allow for running a node js app

Use the provided command to connect to your ubuntu user profile on the EC2.
e.g. `ssh -i "tech254.pem" ubuntu@ec2-54-155-164-225.eu-west-1.compute.amazonaws.com`
`-i` means identity, `tech254.pem` is the identity.

Using the copied HTTPS url, use the git clone command to clone the repo with the app in it.
e.g. `git clone git clone https://github.com/LSF970/sparta_test_app.git`
Use `ls` to check the app is there.

## Setting up NodeJs.

First:
- `curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -`
This command notifies the system that when downloading NodeJs, this is the package to use.

Following this, run the following command:
- `sudo apt install nodejs -y`
which installs what has been notified as the installation version

Then:
- `sudo npm install pm2 -g`
This is now using the Node Package Manager to install dependencies.


Finally
   1. Make sure to `cd` into the necessary app folder for this command:
   2. `npm install`
   3. This command installs all libraries located within the environment required to run the file. 
   4. `node app.js`




# Node JS operates on port 3000


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