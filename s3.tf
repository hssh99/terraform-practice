resource "aws_s3_bucket" "hs-terraform-bucket" {
  # args
  bucket = "hs-terraform-practice-bucket"
  tags = {
    Name = "hs-terraform-practice-bucket"
  }
}
