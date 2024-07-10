resource "aws_instance" "conditions" {
    ami = var.ami_id
    count = 11
    instance_type = var.instance_names[count.index] == "Mongodb" || var.instance_names[count.index] == "Mysql" ? "t3.medium" : "t2.micro"
    tags = {
        Name = var.instance_names[count.index]
    }
}

resource "aws_route53_record" "record" {
  count = 11
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain}" #interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.conditions[count.index].public_ip]
}