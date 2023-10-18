#provider "aws" {
#  region = var.AWS_region
#  profile = "default"
#}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "eu-central-1"
  profile = "default"
}

resource "aws_instance" "IgneJone_instance" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  iam_instance_profile = var.IAM_INSTANCE_PROFILE

  user_data = file("user_data.sh")

  tags = {
    Name = "IgneJone"
  }
}

resource "aws_s3_bucket" "IgneJone_bucket" {
  bucket = var.S3_BUCKET_NAME
  acl    = "private"

  tags = {
    Name = "IgneJone"
  }
}
