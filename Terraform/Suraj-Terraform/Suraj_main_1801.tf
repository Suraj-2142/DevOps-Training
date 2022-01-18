terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.72.0"
    }
  }
}

provider "aws" {
 region = "us-east-2"
 
}

resource "aws_instance" "Terra-Demo" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"

  tags = {
    Name = "TERRAFORM-EC2"
    createdby= "terraform-2142"
  }
}
