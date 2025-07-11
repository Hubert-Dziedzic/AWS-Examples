## Get VPC id

```sh
aws ec2 describe-vpcs \
--filters "Name=tag:Name,Values=nacl-example-vpc" \
--region eu-central-1 \
--query "Vpcs[].VpcId" \
--output text
```
## NACL

```sh
aws ec2 create-network-acl --vpc-id vpc-0f7606b4ebf7bb1ce
```

## GET AMI for Amazon Linux 2
```sh
aws ec2 describe-images \
  --owners amazon \
  --filters "Name=name,Values=amzn2-ami-hvm-*-x86_64-gp2" "Name=state,Values=available" \
  --query "Images | sort_by(@, &CreationDate) | [-1].ImageId" \
  --output text
```