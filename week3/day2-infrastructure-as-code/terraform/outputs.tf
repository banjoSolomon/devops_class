# Week 3 - Day 2: Terraform Outputs

output "instance_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web_server.public_ip
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web_server.id
}

output "app_url" {
  description = "URL to access the application"
  value       = "http://${aws_instance.web_server.public_ip}"
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.web_sg.id
}
