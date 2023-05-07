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
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "MyVPC"
  }
}

resource "aws_vpc" "mainvpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    "Name" = "Main VPC"
  }
}

resource "aws_subnet" "sn" {
    vpc_id = aws_vpc.mainvpc.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "us-west-2a"
    tags = {
      "Name" = "Web Subnet"
    }
}