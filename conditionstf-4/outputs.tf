output "instance_id" {
  value       = try(aws_instance.ec2[0].id, "EC2 not created")
  description = "EC2 Instance ID"
}

output "public_ip" {
  value       = try(aws_instance.ec2[0].public_ip, "EC2 not created")
  description = "Public IP"
}
