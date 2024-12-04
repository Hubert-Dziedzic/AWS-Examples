## Create a user with no permissions

we need to create a new user with no permissions and generate out access keys
```sh
aws iam create-user --user-name sts-machine-user
aws iam create-access-key --user-name sts-machine-user --output table
```

Copy the access key and secret here:
```sh
aws configure
```
then edit credentials file to change away from default profile
```sh
open ~/.aws/credentials
```
Test who you are:
```sh
aws sts get-caller-identity
aws sts get-caller-identity --profile sts
```

make sure you don`t have access to s3
```sh
aws s3 ls --profile sts
```
>An error occurred (AccessDenied) when calling the ListBuckets operation:

## Create a Role 

we need to create a role that will access a new resource
```sh
chmod u+x bin/deploy
./bin/deploy
```

## use new user credentials and assum role
```sh
aws iam put-user-policy \
--user-name sts-machine-user \
--policy-name StsAssumePolicy \
--policy-document file://policy.json
```

```sh
aws sts assume-role \
--role-arn arn:aws:iam::590183897336:role/my-sts-example-stack-StsRole-1TdfYzASpaNB \
--role-session-name s3-sts-example \
--profile -sts
```