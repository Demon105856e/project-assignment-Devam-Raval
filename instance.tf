resource "aws_instance" "nginx_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.nginx_sg.id]
  key_name               = aws_key_pair.ec2_keypair.key_name

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
  }

  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install nginx -y
    systemctl start nginx
    systemctl enable nginx
  EOF

  tags = {
    Name = "Nginx-Server-Custom-VPC"
  }
}
