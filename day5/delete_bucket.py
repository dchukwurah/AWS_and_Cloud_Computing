import boto3

s3 = boto3.client('s3')

bucket_name = 'tech254-chiedozie-bucket'

s3.delete_bucket(Bucket='tech254-chiedozie-bucket')

print("Deleted bucket successfully")
