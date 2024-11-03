# Required libraries
require 'aws-sdk-s3'  # .....AWS SDK for S3 operations
require 'pry'  # ............Interactive shell for debugging
require 'securerandom'  # ...For generating secure random strings (UUIDs)

# S3 Bucket configuration
bucket_name = ENV['BUCKET_NAME']  # Fetching bucket name from environment variables
region = 'eu-central-1'

# Initialize AWS S3 client
client = Aws::S3::Client.new  # Creating a new instance of the S3 client

# Create S3 bucket
resp = client.create_bucket({
  bucket: bucket_name,  # Name of the bucket
  create_bucket_configuration: {
    location_constraint: region  # Region for the bucket
  }
})
# binding.pry