## Create s3 bucket

```sh
aws s3 mb s3://sf-star-trek-14514312 --region eu-central-1
```

## Enable EventBridge Communication
```sh
aws s3api put-bucket-notification-configuration \
--region eu-central-1 \
--bucket sf-star-trek-14514312 \
--notification-configuration '
{
    "EventBridgeConfiguration": {
    }
}'
```

## Upload File
```sh
aws s3 cp picard.jpg s3://sf-star-trek-14514312/picard.jpg --region eu-central-1
```

## Cleanup

aws s3 rm s3://sf-star-trek-14514312/* --region eu-central-1
aws s3 rb s3://sf-star-trek-14514312 --region eu-central-1