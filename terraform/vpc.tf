resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
 
  tags = {
    Name = "devops-vpc"
  }
}


resource "aws_subnet" "public" {
  vpccount = 2
  vpc_id  aws_vpc.main.id
  cidr_block = cidrsubnet(var.vpc_cide, 8, count.index)
  availability_zone  = element(["ap-south-1a", ap-south-1b",], count.index)
  map_public_ip_on_lunch = true
  }


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}
