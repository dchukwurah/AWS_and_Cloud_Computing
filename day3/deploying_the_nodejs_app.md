# Deploying the node JS app


## Setting up EC2

Follow the steps in **ec2_setup_ngix_deploy.md** in day2 folder to set up your EC2 machine.
This time, **add port 3000 via a custom protoco**l (TCP) to allow for running a node js app

Use the provided command to connect to your ubuntu user profile on the EC2.
e.g. `ssh -i "tech254.pem" ubuntu@ec2-54-155-164-225.eu-west-1.compute.amazonaws.com`
`-i` means identity, `tech254.pem` is the identity.

Using the copied HTTPS url, use the git clone command to clone the repo with the app in it.
e.g. `git clone git clone https://github.com/LSF970/sparta_test_app.git`
Use `ls` to check the app is there.

## Setting up NodeJs app

First:
- `curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -`
This command notifies the system that when downloading NodeJs, this is the package to use.

Following this, run the following command:
- `sudo apt install nodejs -y`
which installs what has been notified as the installation version

Then:
- `sudo npm install pm2 -g`
npm means node package manager (similar to pip with python) so its now using this to install dependencies. pm2 is a process manager for node.js


Finally
- `cd` into the app folder
- `npm install`
This command installs all libraries located within the environment required to run the file. 
Then `node app.js` to run app

