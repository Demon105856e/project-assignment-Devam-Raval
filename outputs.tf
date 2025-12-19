output "vpc_id" {
  value = aws_vpc.nginx_vpc.id
}

output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "ec2_public_ip" {
  value = aws_instance.nginx_server.public_ip
}
