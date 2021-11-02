provider "aws" {
    region  = "us-east-1"
}

resource "aws_vpc" "main" {
cidr_block= "10.4.0.0/16"

tags = {
Name = "DSP_vpc"
}
}

resource "aws_subnet" "web" {
vpc_id = aws_vpc.main.id
cidr_block = "10.4.0.0/24"

tags = {
Name = "web_subnet"
}
}

resource "aws_instance" "app_server" {
  subnet_id = aws_subnet.web.id
  ami= "ami-09e67e426f25ce0d7"
 #ami= "ami-02e136e904f3da870"
  instance_type = "t2.micro"
  key_name= "VPCdemo"

  tags = {
    Name = "Terraform"
  }
}
