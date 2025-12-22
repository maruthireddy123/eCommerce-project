resource "aws_security_group" "sg" {
     name        = "tf-ec2-sg"
     description = "Security group for Terraform EC2"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name        = "tf-ec2-sg"
    Environment = "dev"
    Owner       = "Maruthi"
    Project     = "terraform-learning"
  }
}
