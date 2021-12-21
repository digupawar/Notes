provider "aws" {
    region = "us-east-1"
}

variable "insta_type" {
    type= string
}

resource "aws_instance" "App" {
ami= "ami-09e67e426f25ce0d7"
instance_type= var.insta_type
key_name= "VPCdemo"

tags={
  Name= "terraform_inst"
}
}
