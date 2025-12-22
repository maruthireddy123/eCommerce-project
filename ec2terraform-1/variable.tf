variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
  default     = "ami-03b96879f68cbaae2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
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

