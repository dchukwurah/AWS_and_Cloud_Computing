# Why VPC's?
# Security!

# What are VPC's - Virtual Private Cloud 

# When you create an AWS account you get given a default VPC each room is the eqivalent of a subnet but these are public rooms
# there is a default subnet for each of the availability zones
# they are all public
# Custom vpc's are like having a separate flat - Virtual Networks in Azure
# 2 rooms in our custom vpc 1 public 1 private (as in you can choose if your subnet is private or public as well as the availability )
# If it doesn't need to be public why make it public
# you have to set up the space that is used by each of your rooms (subnets)
# a router will use a route table to allow the network to know where to send things , if you do not specify it will use the default route table
# if you want to route traffic from outside you will need to set up your route table
# the internal ones cam come as default


internet gateway will allow for a connection using a public IPVPS notes
NACL- netwrook adcees cpmtrol linkes

# 1st create - VPC
# 2nd create - Create subnets (with IP addresses)
# 3rd create - create internet gateway
# 4th create -
# 5th create - 
# 6th create -

# security groups are associated to particular vpcs
# connect the App Virtual Machine to the IP address of the Database Virtual Machine BVM (private IP)
#