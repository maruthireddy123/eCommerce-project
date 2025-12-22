provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "tf-ec2"
  }
}
