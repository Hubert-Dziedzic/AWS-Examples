import * as cdk from 'aws-cdk-lib';
import { Construct } from 'constructs';
import * as s3 from 'aws-cdk-lib/aws-s3';
// import * as sqs from 'aws-cdk-lib/aws-sqs';

export class AwsCdkS3ExampleStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);
    
    // Define an S3 bucket
    const bucket = new s3.Bucket(this, 'MyBucket', {
      versioned: false, // Disable versioning for simplicity
      removalPolicy: cdk.RemovalPolicy.DESTROY, // Specify removal policy
      autoDeleteObjects: true // Automatically delete objects
    });

    // Output the bucket name
    new cdk.CfnOutput(this, 'BucketName', {
      value: bucket.bucketName,
      description: 'The name of the S3 bucket'
    });
  }
}
