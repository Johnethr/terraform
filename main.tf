# main.tf
provider "aws" {
  region = "us-west-2"  
}

# Define S3 buckets
resource "aws_s3_bucket" "bucket1" {
  bucket = "CodeCarnival-JA-bucket"
  acl = "private"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "NatureEscape-JA-bucket"
  acl = "private"
}

resource "aws_s3_bucket" "bucket3" {
  bucket = "DataSummit-JA-bucket"
  acl    = "private"
}

# Output created bucket names
output "created_buckets" {
  value = [
    aws_s3_bucket.bucket1.bucket,
    aws_s3_bucket.bucket2.bucket,
    aws_s3_bucket.bucket3.bucket
  ]
}
