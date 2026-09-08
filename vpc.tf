resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr_block_vpc
    tags = {
        Name        = var.vpc_name
    }
}