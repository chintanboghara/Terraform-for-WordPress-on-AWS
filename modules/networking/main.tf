# Define the VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.environment}-vpc"
  }
}

# Define public subnets
resource "aws_subnet" "public" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]
  tags = {
    Name = "${var.environment}-public-subnet-${count.index}"
  }
}

# Additional resources like NAT Gateway, Internet Gateway, etc., can be added here.