# Output values for reference

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.devops_vpc.id
}

output "web_server_public_ip" {
  description = "Web Server Elastic IP"
  value       = aws_eip.web_eip.public_ip
}

output "web_server_private_ip" {
  description = "Web Server Private IP"
  value       = aws_instance.web_server.private_ip
}

output "ansible_server_private_ip" {
  description = "Ansible Server Private IP"
  value       = aws_instance.ansible_server.private_ip
}

output "monitoring_server_private_ip" {
  description = "Monitoring Server Private IP"
  value       = aws_instance.monitoring_server.private_ip
}

output "ecr_repository_url" {
  description = "ECR Repository URL"
  value       = aws_ecr_repository.app_repo.repository_url
}
