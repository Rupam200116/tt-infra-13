provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "tt" {
  bucket = "ttt"
  acl    = "private"

  tags = {
    Project     = "tt"
    ManagedBy   = "terraform"
  }
}

output "tt_bucket_name" {
  value = aws_s3_bucket.tt.id
}

output "tt_bucket_arn" {
  value = aws_s3_bucket.tt.arn
}

output "tt_bucket_endpoint" {
  value = aws_s3_bucket.tt.website_endpoint
}