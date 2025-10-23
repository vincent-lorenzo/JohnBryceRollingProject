output "instance_public_ip" {
  description = "public ip of the ec2 instance"
  value       = aws_instance.builder.public_ip
}

output "ssh_private_key_path" {
  description = "location of the private ssh key file"
  value       = local_file.private_key.filename
  sensitive   = true
}

output "security_group_id" {
  description = "security group id"
  value       = aws_security_group.builder_sg.id
}

output "ssh_key_name" {
  description = "aws ssh key pair name"
  value       = aws_key_pair.builder_key.key_name
}
