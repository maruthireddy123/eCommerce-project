resource "aws_instance" "ec2" {
  count = var.instance_count

  ami = var.ami_id

  instance_type = var.environment == "prod" ? "t3.micro" : "t2.micro"

  tags = {
    Name        = "tf-${var.environment}-ec2-${count.index}"
    Environment = var.environment
    Index       = count.index
  }
}