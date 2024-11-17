## Create a bucket

```sh
aws s3 mb s3://change-class-bucket-hd-219308
```

### Create a file
```sh
echo "test file" > test.txt
aws s3 cp test.txt s3://change-class-bucket-hd-219308 --storage-class STANDARD_IA
```


## Clean up
```sh
aws s3 rm s3://change-class-bucket-hd-219308/test.txt
aws s3 rb s3://change-class-bucket-hd-219308
```