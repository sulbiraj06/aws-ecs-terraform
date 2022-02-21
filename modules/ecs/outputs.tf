output "id_of_vpc" {
    value = aws_vpc.tf_vpc.id
}

output "alb_hostname" {
  value = aws_alb.alb.dns_name
}