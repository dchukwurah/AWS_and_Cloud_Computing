import boto3

s3 = boto3.resource('s3')

response = s3.create_bucket(Bucket = 'tech254-chiedozie-bucket', CreateBucketConfiguration = {'LocationConstraint': 'eu-west-1'})

print(response)
