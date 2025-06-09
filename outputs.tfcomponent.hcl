output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket created by the component"
  type        = string
  value       = component.s3_bucket.s3_bucket_arn
}

output "s3_bucket_id" {
  description = "The ID of the S3 bucket created by the component"
  type        = string
  value       = component.s3_bucket.s3_bucket_id
}
