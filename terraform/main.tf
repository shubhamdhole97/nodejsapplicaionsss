data "aws_vpc" "default" {
  default = true
}

resource "aws_instance" "example" {
  ami             = "ami-05d2d839d4f73aafb"
  instance_type   = "t3.medium"
  key_name        = "pem.pem"
  security_groups = ["default"]
  count           = 1

  tags = {
    Name = "Ubuntu-24-LTS"
  }
}