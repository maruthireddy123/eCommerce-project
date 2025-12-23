provider "aws" {
  region = "ap-south-1"
}

# DATA SOURCE: Fetch latest Amazon Linux AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

# RESOURCE: EC2 using fetched AMI
resource "aws_instance" "example" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  tags = {
    Name = "amazon-linux-ec2"
  }
}

# DATA SOURCE: Read default VPC
data "aws_vpc" "default" {
  default = true
}

