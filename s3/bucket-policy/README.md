## Create a bucket
```sh
aws s3 mb s3://bucekt-policy-example-hd-398247
```
## Create bucket policy
```sh
aws s3api put-bucket-policy --bucket bucekt-policy-example-hd-398247 --policy file://policy.json
```
## cleanup
```sh
aws s3 rm s3://bucekt-policy-example-hd-398247
aws s3 rb s3://bucekt-policy-example-hd-398247
```