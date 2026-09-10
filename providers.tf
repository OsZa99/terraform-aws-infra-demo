terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  
  backend "s3" {
    bucket         = "oz99-s3-bucket"
    key            = "dev/terraform.tfstate"
    region         = "eu-west-3"
    use_lockfile = true            
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
