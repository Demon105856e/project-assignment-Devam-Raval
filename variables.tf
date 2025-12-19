variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0f5ee92e2d63afc18" # Ubuntu 22.04 Mumbai
}

variable "repo_name" {
  type = string
}

variable "allowed_ports" {
  type    = list(number)
  default = [22, 80, 443]
}

variable "key_name" {
  description = "exam-q3"
}
