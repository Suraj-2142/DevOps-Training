terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "terraform-key"
  public_key = file("~/.ssh/id_ed25519.pub")
}



resource "aws_instance" "Demo_ec2" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b0c0246"
  key_name = aws_key_pair.deployer.key_name

  tags = {
    Name = "Test_ec2"
    CreatedBy = "Terraform"
  }
}
