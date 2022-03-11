
locals {
  # Common tags to be assigned to all resources
  service_name= "Server"
  owner       ="AWS"
        
  common_tags = {
  name        ="local_Ec2"
  Service     = local.service_name
  Owner       = local.owner
  }
}

resource "aws_instance" "Terra-Demo-EC2" {

  ami             = var.image_ids
  instance_type   = "t2.micro"
  subnet_id       = "subnet-0d4382c62140ebfd4"
  key_name        = "VPC"
  tags            = local.common_tags

}

output "public_ip" {
  value           = aws_instance.Terra-Demo-EC2.public_ip 
  
}

  /*

  resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = 
  }
 */



  
 
