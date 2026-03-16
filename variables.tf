variable "dynamo_table_name" {
  type        = string
  default     = "hs-dynamo-table"
  description = "This is table name for Dynamodb"
}


variable "ami_id" {
  default     = "ami-0a14f53a6fe4dfcd1"
  type        = string
  description = "This is ami id for EC2 (ubuntu)"
}
