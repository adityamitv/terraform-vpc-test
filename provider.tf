terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "devopshub-remote-stae"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "devopshub-locking"
  }
}




#provide authentication here
provider "aws" {
    region= "us-east-1"
}