output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs (for the ALB)"
  value       = aws_subnet.public[*].id
}

output "app_subnet_ids" {
  description = "Private app subnet IDs (for the Auto Scaling group)"
  value       = aws_subnet.app[*].id
}

output "db_subnet_ids" {
  description = "Private db subnet IDs (for the RDS subnet group)"
  value       = aws_subnet.db[*].id
}
