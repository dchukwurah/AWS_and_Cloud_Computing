### Download from S3 Bucket


#### Steps:

1. **Import the boto3 library**.
```python
import boto3
```

2. **Create an S3 client**.
```python
s3 = boto3.client('s3')
```

3. **Specify the bucket name and file details**: Define the bucket name, the key name of the file in S3, and the local download path.
```python
bucket_name = 'tech254-chiedozie-bucket'
s3_file_name = 'key-name-of-file-in-s3.txt'
downloaded_file_path = 'path-where-you-want-to-download.txt'
```

4. **Download the file**: Use the `download_file` method.
```python
s3.download_file(bucket_name, key_name, download_path)
```

5. **Print a success message**.
```python
print(f"{key_name} downloaded from {bucket_name} to {download_path}!")
```
---

