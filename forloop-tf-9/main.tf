provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "dynamic_sg" {
  name = "dynamic-port-sg"

  dynamic "ingress" {
    for_each = var.allowed_ports

    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
