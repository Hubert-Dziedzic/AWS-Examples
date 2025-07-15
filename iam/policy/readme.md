## Convert to json

The command
```sh
yq -o json policy.yaml > policy.json
```

The bash script
```sh
./update
```

## Create IAM Policy
```sh
aws iam create-policy \
--policy-name my-example-policy \
--policy-document file://policy.json
```

## Attach Policy to user

```sh
aws iam attach-user-policy \
--policy-arn arn:aws:iam::590183897336:policy/my-example-policy \
--user-name exam-pro
```