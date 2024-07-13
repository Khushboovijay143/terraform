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

variable "ingress" {
  type        = list
  default     = [
    {
        from_port = 80
        to_port = 80
        description = "allowing PORT 80 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 443
        to_port = 443
        description = "allowing PORT 443 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 22
        to_port = 22
        description = "allowing PORT 22 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

  ]
}
