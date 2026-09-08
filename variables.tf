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

variable "cidr_block_subnet" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "rt_name" {
  description = "Name of the Route Table"
  type        = string
}