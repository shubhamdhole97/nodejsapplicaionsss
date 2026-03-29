data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_vpc" "default" {
  default = true
}

resource "aws_instance" "example" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t3.medium"
  key_name        = "pem.pem"
  security_groups = ["default"]
  count           = 1

  tags = {
    Name = "Ubuntu-24-LTS"
  }
}