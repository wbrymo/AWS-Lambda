resource "aws_s3_bucket" "upload_bucket" {
  bucket = "lambda-upload-bucket-${random_id.bucket_id.hex}"
  acl    = "public-read"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
