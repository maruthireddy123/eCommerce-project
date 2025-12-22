variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-03b96879f68cbaae2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default = {
    Name        = "simple-ec2"
    Environment = "dev"
    Project     = "terraform-project"   
  }
}