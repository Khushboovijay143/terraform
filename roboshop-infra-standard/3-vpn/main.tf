module "vpn_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.devops_ami.id
  instance_type = "t2.micro"
  #vpc_security_group_ids = [module.vpn_sg.security_group_id]
  vpc_security_group_ids = [data.aws_ssm_parameter.vpn_sg_id.value]
  #this is optional, if we dont give this will be provisioned inside default subnet of default vpc
  #subnet_id = local.public_subnet_ids[0] # public subnet of default VPC
  tags = merge(
    {
        Name = "Roboshop-VPN"
    },
    var.common_tags
  )
}

/* module "vpn_sg" { 
  source = "../../terraform-module-securitygroup"
  project_name = var.project_name
  sg_name = "roboshop-vpn"
  sg_description = "Allowing all ports from my home IP"
  #sg_ingress_rules = var.sg_ingress_rules
  vpc_id = data.aws_vpc.default.id
  common_tags = var.common_tags
}

resource "aws_security_group_rule" "vpn" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks        = ["0.0.0.0/0"]
  #cidr_blocks       = ["${chomp(data.http.myip.response_body)}/32"]
  #ipv6_cidr_blocks  = [aws_vpc.example.ipv6_cidr_block]
  security_group_id  = module.vpn_sg.security_group_id
} */