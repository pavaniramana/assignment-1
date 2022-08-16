resource "aws_s3_bucket" "b" {
  bucket = var.buck-name


  tags = {
    Name        = "assignment"
    Environment = "Dev"
  }
}