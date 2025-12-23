variable "ami" {
  description = "AMI ID"
}

variable "instance_type" {
  type = map(string)

  default = {
    dev   = "t2.micro"
    stage = "t2.medium"
    prod  = "t2.xlarge"
  }
}
