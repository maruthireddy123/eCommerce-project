variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-03b96879f68cbaae2"
}

variable "environment" {
  description = "dev or prod"
  type        = string
  default     = "prod"
}

variable "create_ec2" {
  description = "Whether to create EC2"
  type        = bool
  default     = true
}
