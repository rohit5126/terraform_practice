resource "aws_dynamodb_table" "remote_dynamo_table" {
  name           = "dynamodb-table-1"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "dynamodb-table-1"
  }
}
