## Create Secrets via Secrets Manager

```sh
aws secretsmanager create-secret \
--name MyRdsPassword \
--description "My rds password" \
--secret-string "{\"password\":\"mypassword\"}"
```