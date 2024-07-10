output "public_ips" {
  value       = aws_instance.conditions[*].public_ip
}

output "private_ips" {
  value       = aws_instance.conditions[*].private_ip
}
