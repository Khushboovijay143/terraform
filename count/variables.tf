variable "instance_names" {
  type        = list
  default     = ["Mongodb", "Catalogue", "Cart", "User", "Redis", "Mysql", "RabbitMQ", "Shipping", "Payment", "Dispatch", "Web"]
}

variable "ami_id" {
  #type        = string
  default     = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
  #type        = string
  default     = "Z0188474260R4L0BUHXDH"
}

variable "domain" {
  default     = "vijaydeepak0812.online"
}
