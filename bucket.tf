
resource "aws_s3_bucket" "terraform_state" {
  bucket = "oz99-s3-bucket"  
  tags = {
    Name        = "My bucket"
  }
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
