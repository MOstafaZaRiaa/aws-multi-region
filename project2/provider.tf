# Configure the provider software version
terraform {
  backend "s3" {
    bucket = "your_bucket_name" #set your bucket name
    dynamodb_table = "terraform_state_lock_table_name" #set your DynamoDB table name
    key    = "terraform.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  access_key = ""
  secret_key = "" 
  token = ""
  }