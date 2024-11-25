# Create Website 1
## Create a bucket
```sh
aws s3 mb s3://cours-example-hd-5234
```
## Change block public access
```sh
aws s3api put-public-access-block \
    --bucket cours-example-hd-5234 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```
## Create a bucket policy
```sh
aws s3api put-bucket-policy --bucket cours-example-hd-5234 --policy file://bucket-policy.json
```
## Turn on static website hosting
```sh
aws s3api put-bucket-website --bucket cours-example-hd-5234  --website-configuration file://website.json
```
## upload our index.html file and iclude a resource that would be cross-origin
```sh
aws s3 cp index.html s3://cours-example-hd-5234
aws s3 cp style.css s3://cours-example-hd-5234
```
## View the wbsite and see if the index.html is there
http://cours-example-hd-5234.s3-website.eu-central-1.amazonaws.com

## Apply a CROS policy

## cleanup
```sh
aws s3 rm --recursive s3://cours-example-hd-5234
aws s3 rb s3://cours-example-hd-5234
```

# Create Website 1

## Create a bucket
```sh
aws s3 mb s3://cours-example-hd-52342
```
## Change block public access
```sh
aws s3api put-public-access-block \
    --bucket cours-example-hd-52342 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```
## Create a bucket policy
```sh
aws s3api put-bucket-policy --bucket cours-example-hd-52342 --policy file://bucket-policy2.json
```
## Turn on static website hosting
```sh
aws s3api put-bucket-website --bucket cours-example-hd-52342  --website-configuration file://website.json
```
## upload our javascript file
```sh
aws s3 cp hello.js s3://cours-example-hd-52342
```

## Create API Gateway with mock repsone and then test endpoint
```sh
curl -X POST -H "Content-Type: application/json" https://73zuau5cci.execute-api.eu-central-1.amazonaws.com/prod/hello
```

## Set CORS on our bucket
```sh
aws s3api put-bucket-cors --bucket cours-example-hd-52342 --cors-configuration file://cors.json
```

## cleanup
```sh
aws s3 rm --recursive s3://cours-example-hd-52342
aws s3 rb s3://cours-example-hd-52342
```