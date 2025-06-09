resource "aws_lambda_function" "file_processor" {
  function_name = "FileProcessorLambda"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.11"
  role          = aws_iam_role.lambda_exec_role.arn
  filename      = "${path.module}/../lambda_function.zip"
  source_code_hash = filebase64sha256("${path.module}/../lambda_function.zip")
}
