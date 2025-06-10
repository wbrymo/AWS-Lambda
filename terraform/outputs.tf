output "bucket_name" {
  value = aws_s3_bucket.upload_bucket.bucket
}

output "api_endpoint" {
  value = aws_apigatewayv2_stage.default.invoke_url
}
