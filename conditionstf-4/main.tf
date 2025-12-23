resource "aws_instance" "ec2" {
  count = var.create_ec2 ? 1 : 0

  ami = var.ami_id

  instance_type = var.environment == "prod" ? "t3.micro" : "t2.micro"

  tags = {
    Name        = "tf-${var.environment}-ec2"
    Environment = var.environment
    Monitoring  = var.environment == "prod" ? "enabled" : "disabled"
  }
}
