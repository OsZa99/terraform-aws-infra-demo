variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "cidr_block_vpc" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}