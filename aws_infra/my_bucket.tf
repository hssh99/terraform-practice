# S3 Bucket
resource "aws_s3_bucket" "hs-terraform-bucket" {
  bucket = "${var.my_env}-hs-terraform-practice-bucket"
  tags = {
    Name        = "${var.my_env}-hs-terraform-practice-bucket"
    environment = var.my_env
  }
}
