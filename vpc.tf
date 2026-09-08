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

resource "aws_internet_gateway" "my_igw" {
    vpc_id = aws_vpc.my_vpc.id
    tags = {
        Name = var.igw_name
    }
}

resource "aws_route_table" "my_rt" {
    vpc_id = aws_vpc.my_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_igw.id
    }
    tags = {
        Name = var.rt_name
    }
}

resource "aws_route_table_association" "my_rt_association" {
    subnet_id      = aws_subnet.my_subnet.id
    route_table_id = aws_route_table.my_rt.id
}