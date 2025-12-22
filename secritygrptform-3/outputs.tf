output "public_ip" {
  value = aws_instance.ec2.public_ip
}

output "sg_id" {
  value = aws_security_group.sg.id
}
