variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-03b96879f68cbaae2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "remote-state-ec2"
}
