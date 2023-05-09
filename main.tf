terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    "Name" = "MyVPC"
  }
}

resource "aws_subnet" "sn" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.web_sn
    availability_zone = "us-west-2a"
    tags = {
      "Name" = "Web Subnet"
    }
}