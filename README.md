## Terraform Final Task ITI
This repository contains the Terraform code to deploy infrastructure on AWS in two different region. It includes creating a VPC with public subnets, launching EC2 instances in the public subnets, Create DynamoDB,Store the state file on s3 bucket.

## AWS Architecture
![terraform final task ITI drawio](https://github.com/MOstafaZaRiaa/aws-multi-region/blob/main/screens/Architecture%20Digram.png?raw=true)

## Overview
This project uses Terraform to create the following AWS resources per region:
- VPC
- Internet Gateway
- Public Route Table
- Public EC2 instances
- DynamoDB

## Prerequisites
Before running the deployment script, you will need to have the following:

- AWS account
- Terraform installed on your local machine
- AWS CLI installed on your local machine
- AWS credentials configured on your local machine
- A S3 bucket to store the Terraform state file, and DynamoDB to use for state locking.

## To get started:

Clone this repository to your local machine.
```
git clone https://github.com/MOstafaZaRiaa/aws-multi-region.git
```
Create the 2 workspaces
```
$ terraform workspace new dev
$ terraform workspace new prod
```
Specify the code 
```

```
Run `terraform init` to download the necessary Terraform plugins.

Run `terraform apply` to create the infrastructure.

## Final Result
you can check the look inspect .terraform/terraform.tfstate, you will see that it contains the location of the state file now instead of the actual state file.

![check look on state file](https://github.com/MOstafaZaRiaa/aws-multi-region/blob/main/screens/2.PNG)

