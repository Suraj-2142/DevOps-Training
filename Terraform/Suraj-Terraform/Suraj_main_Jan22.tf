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

/*
resource "aws_key_pair" "deployer" {
  key_name   = "Terrafor-Key-suraj"
  public_key = "SURAJ"
  Git push for 20 Jan 2022
  changes added for pull request
//}*/

resource "aws_instance" "Terra-Demo" {
  
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"
  subnet_id = "subnet-01a956015fff8a630"
  key_name = "VPC"
 // key_name = "aws_key_pair.deployer.key_name"
    

  tags = {
    Name = "TERRAFORM-EC2"
    createdby= "terraform-2142"
  }
}
