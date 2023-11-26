terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}







provider "aws" {
  region = "eu-west-1"
}


resource "aws_instance" "bimbo_instance" {
  ami           = "ami-07355fe79b493752d"
  instance_type = "t2.micro"

  tags = {
    Name = "testInstance"
  }
}

