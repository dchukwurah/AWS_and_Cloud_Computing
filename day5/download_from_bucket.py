import boto3

s3 = boto3.client('s3')

bucket_name = 'tech254-chiedozie-bucket'
s3_file_name = 's3_example.txt'
downloaded_file_name = 'downloaded_s3_example.txt'

s3.download_file(bucket_name, s3_file_name, downloaded_file_name)

print("successfully downloaded file")