locals {
  ami_id        = "ami-03b96879f68cbaae2"
  key_public = file("${path.module}/maruthi1.pub")
  instance_type = var.environment == "prod" ? "t3.medium" : "t2.micro"
}
