provider "aws" {
    region = "us-east-1"
  }
  
  module "network" {
    source = "./modules/network"
  }
  
  module "security_group" {
    source = "./modules/security-group"
    vpc_id = module.network.vpc_id
  }
  
  module "ec2" {
    source            = "./modules/ec2"
    subnet_id         = module.network.subnet_id
    security_group_id = module.security_group.sg_id
    instance_count    = 2
    key_name          = "MyKeyPair" 
  }
  
  output "ec2_public_ips" {
    value = module.ec2.public_ips
  }