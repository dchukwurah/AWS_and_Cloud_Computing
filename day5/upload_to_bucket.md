### Upload a file to S3 Bucket


#### Steps:

1. **Import the boto3 library**.
```python
import boto3
```

2. **Create an S3 client**.
```python
s3 = boto3.client('s3')
```

3. **Specify the bucket name and file details**: Define the bucket name, the local file path, and the desired name in S3.
```python
bucket_name = 'tech254-chiedozie-bucket'
file_name = 'example.txt'
s3_file_name = 's3_example.txt'
```

4. **Upload the file**: Use the `upload_file` method.
```python
s3.upload_file(file_name, bucket_name, s3_file_name)
```

5. **Print a success message**.
```python
print(f"{file_name} uploaded to {bucket_name} as {s3_file_name}!")
```