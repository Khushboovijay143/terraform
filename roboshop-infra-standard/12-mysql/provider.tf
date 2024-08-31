terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }


backend "s3" {
  bucket = "roboshop-software-remote-state"
  key = "mysql"
  region = "us-east-1"
  dynamodb_table = "roboshop-software-lock"
  }
}

provider "aws" {
  # Configuration options
   region = "us-east-1"
}