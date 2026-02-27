resource "aws_dynamodb_table" "remote_dynamo_table" {
  name           = "${var.env}-dynamodb-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"
  }

  tags = {
    Name        = "${var.env}-dynamodb-table"
    Environment = var.env
  }
}
