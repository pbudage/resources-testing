provider "aws" {
  region = "us-east-1"
}

resource "aws_internet_gateway" "test-igw-iac-1" {
  tags = {
    Name = "test-iac-igw-1"
  }
}

resource "aws_vpc" "test-vpc-iac-1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-iac-vpc-1"
  }
}
