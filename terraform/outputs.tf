# Terraform Outputs

# EC2 Outputs
output "ec2_public_ip" {
  description = "EC2 Public IP"
  value       = aws_instance.app.public_ip
}

output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.app.id
}

# S3 Outputs
output "s3_bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.app_bucket.id
}

output "s3_bucket_arn" {
  description = "S3 Bucket ARN"
  value       = aws_s3_bucket.app_bucket.arn
}

# RDS Outputs
output "rds_endpoint" {
  description = "RDS Endpoint"
  value       = aws_db_instance.main.endpoint
}

output "rds_database_name" {
  description = "RDS Database Name"
  value       = aws_db_instance.main.db_name
}

# ELB Outputs
output "elb_dns_name" {
  description = "ELB DNS Name"
  value       = aws_lb.app.dns_name
}

output "application_url" {
  description = "Application URL"
  value       = "http://${aws_lb.app.dns_name}/todos"
}
