terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {  
    region = "us-west-2"
}

resource "aws_s3_bucket" "buckets" {
    bucket = var.s3_bucket_names[count.index]
    acl    = "private"

    count = length(var.s3_bucket_names)
}