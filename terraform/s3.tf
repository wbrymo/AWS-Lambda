resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "upload_bucket" {
  bucket = "lambda-upload-bucket-${random_id.bucket_id.hex}"

  tags = {
    Name        = "Lambda Upload Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.upload_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket = aws_s3_bucket.upload_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
