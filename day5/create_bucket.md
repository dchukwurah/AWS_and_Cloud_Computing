### Create S3 Bucket

#### Steps:

1. **Import the boto3 library**: This library allows Python scripts to interact with AWS services.
```python
import boto3
```

2. **Create an S3 client**: Establish a connection to the S3 service.
```python
s3 = boto3.resource('s3')
```

4. **Create the bucket**: Use the `create_bucket` method to make the bucket. Define the name of the bucket you want to create and specify the location constraint to ensure it has been built in the right location
```python
response = s3.create_bucket(Bucket = 'tech254-chiedozie-bucket', CreateBucketConfiguration = {'LocationConstraint': 'eu-west-1'})
```

5. **Print a success message**: Confirm that the bucket was created by printing the stored response variable.
```python
print(response)
```
---