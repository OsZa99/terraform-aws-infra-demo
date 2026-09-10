output "vpc_id" {
  description = "ID of VPC"
  value       = aws_vpc.my_vpc.id
}

output "subnet_id" {
  description = "ID of Subnet"
  value       = aws_subnet.my_subnet.id
}

output "internet_gateway_id" {
  description = "ID of Internet Gateway"
  value       = aws_internet_gateway.my_igw.id
}

output "route_table_id" {
  description = "ID of Route Table"
  value       = aws_route_table.my_rt.id
}

output "security_group_id" {
  description = "ID of Security Group"
  value       = aws_security_group.my_sg.id
}

output "instance_id" {
  description = "ID of EC2 Instance"
  value       = aws_instance.my_instance.id
}

output "instance_public_ip" {
  description = "Public IP of EC2 Instance"
  value       = aws_instance.my_instance.public_ip
}

output "website_url" {
  description = "L'URL pour acceder au site web"
  value       = "http://${aws_instance.my_instance.public_ip}"
}

output "s3_bucket_name" {
  description = "Name of bucket S3"
  value       = aws_s3_bucket.terraform_state.bucket
}