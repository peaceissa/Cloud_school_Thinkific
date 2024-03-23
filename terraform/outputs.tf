output "s3_bucket_names" {
  description = "name of s3 bucket"
  value       = aws_s3_bucket.buckets.*.bucket
}


