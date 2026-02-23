terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.1"
    }
  }
  backend "s3" {
    bucket = "terra-5126-rohit-bucket"
    region = "eu-north-1"
    key = "terraform.tfstate"
    dynamodb_table = "dynamodb-table-1"
  }
}
