data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-resolute-26.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh_key"
  public_key = file(var.my_public_key_path)
}

resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  subnet_id = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  availability_zone = "${var.aws_region}a"

  associate_public_ip_address = true
  key_name = aws_key_pair.ssh_key.key_name
  
  user_data                   = file("script.sh")
  user_data_replace_on_change = true

  tags = {
    Name = var.instance_name
  }
}