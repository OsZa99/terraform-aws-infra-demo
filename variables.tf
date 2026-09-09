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

variable "sg_name" {
  description = "Name of the Security Group"
  type        = string
}

variable "my_ip" {
  description = "My public IP address for SSH access"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "my_public_key_path" {
  description = "Path to the public key for SSH access"
  type        = string
}