provider "aws"{
    region = "ap-south-1"
    access_key = "AKIAXXB3S6P5IITPKSSJ"
    secret_key = "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"
}


resource "aws_vpc" "main" {
  cidr_block       = "100.10.0.0/16"

  tags = {
    Name = "main_vpc"
  }
}


resource "aws_subnet" "public-subnet-1" {
    vpc_id = aws_vpc.main.id
    cidr_block = "100.10.10.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.availability_zones[0]
    tags = {
        Name = "public_sn1"
    }
}

resource "aws_subnet" "public-subnet-2" {
    vpc_id = aws_vpc.main.id
    cidr_block = "100.10.20.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.availability_zones[1]
    tags = {
        Name = "public_sn2"
    }
}


