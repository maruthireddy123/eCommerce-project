variable "instance_names" {
  type    = list(string)
  default = [
    "MongoDB",
    "Cart",
    "Catalogue",
    "User",
    "Redis",
    "MySQL",
    "RabbitMQ",
    "Shipping",
    "Payment",
    "Web"
  ]
}

variable "zone_id" {
  default = "Z10176082TIQZG42EXM7K"
}

variable "domain" {
  default = "maruthi1.shop"
}

variable "environment" {
  default = "prod"
}
