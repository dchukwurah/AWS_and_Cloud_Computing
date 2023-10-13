# VPC Script fpr task

AWS VPC (Virtual Private Cloud) allows AWS resources to be launched in logically isolated virtual 
networks which resemble traditional network architecture in a datacentre, with the additional benefits of scalable infrastructure from AWS.

Explain the use of Jekins CIDR Blocks

EC2 instances can be placed in a separate subnet in each AZ in a Region, using an internet gateway to
allow communication between the resources and the internet, as shown above. The app instance is placed in a public subnet so the public can access it over the internet 
and it communicates with the database instance in a private subnet.

## Creating the VPC

1. Firstly, navigate to the AWS VPC service either through the top search bar or by clicking services in the top-left corner. Then, click the orange 'Create VPC' button and the following page should appear:

2. For now, we do not want the extra networking resources so we shall select 'VPC only', adding an appropriate 'Name tag' and 'IPv4 CIDR block' (Classless Inter-Domain Routing), in this case we are using a common CIDR: 10.0.0.0/16.

## Creating an Internet Gateway

1. After creating the VPC, the next step is to create the IGW (Internet Gateway). On the left side bar, click 'Internet gateways' then click the orange 'Create internet gateway' button at the top and the following page shall appear:

2. All we need to do here is add a suitable name and click 'Create internet gateway'.

1. Once the IGW has been created, we need to attach it to the VPC. A green notification at the top should appear and say to attach the IGW to the VPC, or alternatively, you can click 'Actions' > 'Attach to VPC'.

2. On the next screen, shown below, we can search for the VPC we just created to attach our IGW to the VPC. If successful, the 'State' of the IGW should say 'Attached'.


## Creating the Subnets

1. The next step is to create the public and private subnets. On the left side menu, go to 'Subnets' and click the orange 'Create subnet' button and you should be presented with the following page:


2. We can search for our newly created VPC, then write a suitable 'Subnet name' e.g. 'public-subnet' to distinguish the subnet from a private subnet as this is very important to allow privacy of resources within our private subnet. We can then let AWS decide on the AZ the subnet will reside or we can choose one e.g. 'eu-west-1a'. After this, we can enter a suitable 'IPv4 CIDR block', e.g. 10.0.2.0/24 as it belongs on the VPC CIDR block 10.0.0.0/16, and allows up to 255 different IPs (10.0.2.0 to 10.0.2.255).

3. In a similar way, we can then create the private subnet, using an 'IPv4 CIDR block' of 10.0.3.0/24. It is beneficial to choose a different AZ to allow for high availability since if the app AZ goes down, the database will still be functional and vice versa.

## Creating the Route Tables

1. The next step is to create a route table for the public subnet and set up routes from the networking resources i.e. the IGW to the subnet. To create a route table, click 'Route tables' on the left and click the 'Create route table' orange button and the following screen shall appear:


2. Next, fill out a suitable name and select the VPC. Once created, we can go to the 'Subnet associations' tab and see there are 'Subnets without explicit associations' as shown below:


3. To associate these subnets with the route table, click 'Edit subnet associations', and the following screen shall appear, here we can simply select our public subnet we created earlier and it shall associate it with this route table.


4. Now, we can go to the 'Routes' tab and click 'Edit routes' where we can then 'Add route' to add a new route for the target internet gateway with a destination of 0.0.0.0/0 so anywhere can access it. Typically though we would specify here


5. The VPC should have automatically created a 'main route table' by default, this routes all unassociated subnets internally, ensuring we only have one route for the local target and no connection to the IGW so it is suitable for the private subnet, feel free to rename it as below:


## Checking the VPC

1. Finally, we can go back to our VPC on the left side menu and check the 'Resource map' as shown below to ensure the subnets were set up and connected to the correct route table and that the public subnet was connected to the IGW.

2. Our VPC is now set up and we are ready to add EC2 instances inside our subnets in the next step.

## Creating EC2 Instances in the VPC

1. To add EC2 instances in the newly created VPC, we can create an instance in the familiar way. However, when we get to the 'Network settings' section, select our new VPC instead of the default one provided by AWS.
We sldo have to create security groups that belong to this VPC instead of belonging to the default ones we have set before and, in this example, the private subnet since we want to keep this private, we also have to create a new security group, with rules to only allow access via SSH and MongoDB port 27017

2. Once created, we can do the same for the web application's public subnet, as shown below, creating a new security group to allow SSH, HTTP and the application port 3000 communication

3. For the application to run successfully we'll also add user data install and run node, we also need to include the Private IP of the newly created DB instance (e.g. 10.0.3.221) as the 'DB_HOST' environment variable.

## Checking the Two-Tier Architecture

1. We can check the two-tier architecture has been successfully set up by going to the instance summary pages. For the webapp instance, we can see that it's in the created VPC and public subnet we created , it also has a private IPv4 address within the CIDR block range of 10.0.2.0. and a public IPv4 address we can use to access the site later.


2. In a similar way, we can check the database instance, we can see that is in the same VPC amd in the separate private subnet with a private IPv4 address within the CIDR block range of 10.0.3.0.


3. Finally, to check the app and database are functional, we can enter the webapp public IPv4 address into a browser address bar and check the app works and add '/posts' to the end of the address to check the database has been successfully connected.