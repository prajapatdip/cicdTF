provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "bucket_name"
    dynamodb_table = "dyanamo_table_name"
    key = "global/mystatefile/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}
