locals {
  ami_id = "ami-0b4f379183e5706b9"
  key_public = file("${path.module}/vijay.pub")
  instance_type =var.isPROD ? "t3.medium" : "t2.micro"
}
