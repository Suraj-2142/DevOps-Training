
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





  
 
