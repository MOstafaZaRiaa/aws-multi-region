
# Configue the ec2 resource
module "ec2-module"{
    source="../modules/ec2"
    ami= var.ami
    instance_type= var.instance_type
    subnet_id = module.network.private_subnet_id
    instance_name = "public-ec2"  
}
module "network" {
  source = "../modules/vpc"
  az = "us-east-1a"
}

module "dynamo_db" {
  source = "../modules/dynamoDB"
  dynamodb_name = var.dynamodb_name
  dynamo_table_key = var.dynamo_table_key
  dynamo_table_key_type = var.dynamo_table_key_type

}

module "create_s3_bucket" {
  source = "../modules/s3-bucket"
  bucket_name = var.s3_bucket
}
