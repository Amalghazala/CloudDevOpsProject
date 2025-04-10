output "public_ips" {
  value = [for instance in aws_instance.app : instance.public_ip]
}