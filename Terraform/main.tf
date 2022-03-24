terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

/*  
resource "aws_instance" "web" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  key_name      = "Ajinkya"

  tags = {
    Name = "Demo-Instance"
  }
}

output "private_ip" {
  value = aws_instance.web.private_ip  
}*/

  resource "aws_instance" "Import-Ec2" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  # (resouce arguments)

}