## Create abucket

aws s3 mb s3://endryption-example-hd-12334

### Create a file

echo "Hello World" > hello.txt
aws s3 cp hello.txt s3://endryption-example-hd-12334

### put object with encryption ok KMS


aws s3api put-object \
--bucket endryption-example-hd-12334 \
--key hello.txt --body hello.txt \
--server-side-encryption aws:kms \
--sse-kms-key-id