/*
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}
*/
provider "aws" {
    region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami= "ami-09e67e426f25ce0d7"
 #ami= "ami-02e136e904f3da870"
  instance_type = "t2.small"
  key_name= "VPCdemo"

  tags = {
    Name = "Terraform"   -----------> instance name
  }
}
