output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = [for instance in aws_instance.Myserver : instance.id]
}

output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.demo_bucket.id
}

output "instance_public_ips" {
  description = "Public IPs of the EC2 instances"
  value       = [for instance in aws_instance.Myserver : instance.public_ip]
}

output "instance_private_ips" {
  description = "Private IPs of the EC2 instances"
  value       = [for instance in aws_instance.Myserver : instance.private_ip]
}
