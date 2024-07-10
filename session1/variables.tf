variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "sg_name" {
    default = "allow_all6"
}

variable "sg_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "instance_name" {
  #type        = list
  default     = "mongodb"
}

variable "tags" {
  type        = map
  default     = {
    Name = "mongodb"
        Environment = "DEV"
        Terraform = "true"
        Project = "Roboshop"
        Component = "mongodb"
  }
}