# DynamoDB table 
resource "aws_dynamodb_table" "name" {
  name         = "${var.my_env}-hs-terraform-practice-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
}

