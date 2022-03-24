
 /*resource "aws_instance" "Terra-Demo-EC2" {

  ami             = var.image_ids
  instance_type   = "t2.micro"
  subnet_id       = "subnet-0d4382c62140ebfd4"
  key_name        = "VPC"
  tags            = local.common_tags

}

output "public_ip" {
  value           = aws_instance.Terra-Demo-EC2.public_ip 
  
}


  resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = 
  }
  */
 /* 
Data Resource 

data "aws_ami_ids" "ubuntu" {
  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
  }
}
Data Import
  
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  # (resouce arguments)

}
 */

resource "aws_instance" "Suraj-Ec2" {
  # (resource arguments)
}