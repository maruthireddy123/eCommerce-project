provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-03b96879f68cbaae2"
  instance_type = "t2.micro"

  tags = {
    Name = "my-first-ec2"
  }
}