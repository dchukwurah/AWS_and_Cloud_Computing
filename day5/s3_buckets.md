# S3 Buckets
scalable storage service
# buckets - you can 'throw' your data in there, lot of freedom around data types and how its stored
# different prices for storing data in different tiers
# low cost - for less frequent use
# lots of different ways to interact with aws e.g. via amazon console or via CLI
# Create, Read, Update, Delete -> CRUD
# Boto3 library in Python can also do CRUD in AWS
# aws configure
# Secret Key and Access Keys are used to access AWS CLI

# install python on the ec2 instance as we need it to work with aws cli
# install pip
# to make bucked use mb command
# aws s3 mb s3://tech254-chiedozie-bucket --region eu-west-1
# sudo nano example.txt - to make a text file to add to bucket
# aws s3 cp example.txt s3://tech254-chiedozie-bucket - will copy/upload the file to bucket
# `aws s3 sync s3://tech254-chiedozie-bucket s3_downloads  - will download/read the file/folder
# to delete a single object : `aws s3 rm s3://tech254-chiedozie-bucket/example.txt`
# to delete the bucket remove the whole bucket use rb command : `aws s3 rb s3://tech254-chiedozie-bucket`

# create some scripts in python to do the above using boto3


More notes on [https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3/index.html](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3/index.html)