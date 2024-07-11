 resource "aws_key_pair" "deployer" {
  key_name   = "vijay-pub"
  public_key = file("${path.module}/vijay.pub")
} 
#I don't requrie it because i have dont it mannually.

resource "aws_instance" "file-function" {
  ami = local.ami_id #devops-practice in us-east-1
  instance_type = local.instance_type
  key_name = aws_key_pair.deployer.key_name
}