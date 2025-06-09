output "bucket_name" {
  value = aws_s3_bucket.upload_bucket.bucket
}

output "api_endpoint" {
  value = aws_api_gateway_deployment.api_deployment.invoke_url
}
