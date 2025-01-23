output "instance_ids" {
  description = "Liste des IDs des instances EC2"
  value       = aws_instance.ec2_instance[*].id
}

output "public_ips" {
  description = "Liste des IPs publiques des instances EC2"
  value       = aws_instance.ec2_instance[*].public_ip
}

output "private_ips" {
  description = "Liste des IPs privées des instances EC2"
  value       = aws_instance.ec2_instance[*].private_ip
}
