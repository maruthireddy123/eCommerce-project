output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.tf_state.bucket
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.tf_state.arn
}

output "dynamodb_table_name" {
  description = "The DynamoDB table used for Terraform state locking"
  value       = aws_dynamodb_table.tf_lock.name
}
