output "ami_id_used" {
  value = data.aws_ami.amazon_linux.id
}

output "ec2_id" {
  value = aws_instance.example.id
}

output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "vpc_cidr" {
  value = data.aws_vpc.default.cidr_block
}

output "vpc_name" {
  value = try(data.aws_vpc.default.tags["Name"], "No-Name-Tag")
}

