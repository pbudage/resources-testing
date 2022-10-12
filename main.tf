provider "aws" {
  region = "us-east-1"
}

resource "aws_internet_gateway" "test-gateway" {
  tags = {
    Name = "test-igw"
  }
}

resource "aws_vpc" "test-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-vpc-drift"
  }
}
