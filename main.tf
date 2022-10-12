provider "aws" {
  region = "us-east-1"
}

resource "aws_internet_gateway" "test-igw-iac" {
  tags = {
    Name = "test-iac-igw"
  }
}

resource "aws_vpc" "test-vpc-iac" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-iac-vpc"
  }
}
