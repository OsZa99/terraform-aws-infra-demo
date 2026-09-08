resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr_block_vpc
    tags = {
        Name        = var.vpc_name
    }
}

resource "aws_subnet" "my_subnet" {
    cidr_block = var.cidr_block_subnet
    vpc_id     = aws_vpc.my_vpc.id
    availability_zone       = "${var.aws_region}a"
    map_public_ip_on_launch = true
    tags = {
        Name = var.subnet_name
    }
}