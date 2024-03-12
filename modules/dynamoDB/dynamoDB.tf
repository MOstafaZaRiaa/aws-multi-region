resource "aws_dynamodb_table" "dynamodb-terraform" {
  name = var.dynamodb_name
  hash_key = var.dynamo_table_key
  billing_mode   = "PAY_PER_REQUEST"
  attribute {
    name = var.dynamo_table_key
    type = var.dynamo_table_key_type
  }
}