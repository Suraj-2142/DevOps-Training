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

resource "aws_instance" "web" {
  ami           = "ami-083654bd07b5da81d"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "web_1" {
  ami           = "ami-083654bd07b5da81d"
  instance_type = "t2.micro"
  tags = {
    Name = "Webserver"
  }
}