# VPC
resource "aws_vpc" "crm-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "crm-vpc"
  }
}

# web subnet
resource "aws_subnet" "crm-web-sn" {
  vpc_id     = aws_vpc.crm-vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "crm-web-subnet"
  }
}

# api subnet
resource "aws_subnet" "crm-api-sn" {
  vpc_id     = aws_vpc.crm-vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "crm-api-subnet"
  }
}

# database subnet
resource "aws_subnet" "crm-db-sn" {
  vpc_id     = aws_vpc.crm-vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "crm-database-subnet"
  }
}
