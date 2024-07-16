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

variable "instances" {
  type        = map
  default     = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
    Redis = "t2.micro"
    RabbitMQ = "t2.micro"
    Catalogue = "t2.micro"
    User = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Payment = "t2.micro"
    Dispatch = "t2.micro"
    Web = "t2.micro"
  }
}

variable "sg_name" {
  type        = string
  default = "allow_all"
}

variable "sg_cidr" {
  default     = ["0.0.0.0/0"]
}
