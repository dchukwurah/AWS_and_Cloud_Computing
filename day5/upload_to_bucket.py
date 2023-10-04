import boto3

s3 = boto3.client('s3')

bucket_name = 'tech254-chiedozie-bucket'
filename = 'example.txt'
s3_file_name = 's3_example.txt'

s3.upload_file(filename, bucket_name, s3_file_name)

print("successfully uploaded file")

