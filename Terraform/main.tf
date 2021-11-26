terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.66.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "image_id" {
  type = string
  default = "ami-083654bd07b5da81d"
  description = "This is AMI ID"
}


resource "aws_key_pair" "IaC" {
  key_name   = "IaC"
  public_key = file("~/.ssh/id_ed25519.pub")
}

resource "aws_instance" "web" {
  ami           = var.image_id
  key_name      = "IaC"
  instance_type = "t2.micro"
  security_groups = ["allow_ssh"]
  tags = {
    Name = "CreatedByIaC"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-b266edcf"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}