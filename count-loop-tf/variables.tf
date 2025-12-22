variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-03b96879f68cbaae2"
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 3
}

variable "environment" {
  default = "dev"
}
