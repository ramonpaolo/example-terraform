output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_ip_public" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_dns_public" {
  description = "Public DNS address of the EC2 instance"
  value       = aws_instance.app_server.public_dns
}