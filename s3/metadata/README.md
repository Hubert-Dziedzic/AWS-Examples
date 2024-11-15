### Create a bucket
```sh
aws s3 mb s3://metadata-example-hd-21355
```
### Create a new file
```sh
echo "Hello World" > newfile.txt
```
### Uploade file with metadata
```sh
aws s3api -put-object --bucket metadata-example-hd-21355 --key newfile.txt --body --metadata Planet=World
```
### Get metadata through head object
```sh
aws s3api head-object --bucket metadata-example-hd-21355 --key newfile.txt 
```
### Cleanup
```sh
aws s3 rm s3://metadata-example-hd-21355/newfile.txt
aws s3 rb s3://metadata-example-hd-21355
```