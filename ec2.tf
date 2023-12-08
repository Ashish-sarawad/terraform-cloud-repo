terraform {
  required_version = "1.3.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


#tfsec:ignore:aws-ec2-enforce-http-token-imds
resource "aws_instance" "web" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.micro1"
  root_block_device {
    encrypted = true
  }
  tags = {
    name = "Created by pre-commit"
  }
}
