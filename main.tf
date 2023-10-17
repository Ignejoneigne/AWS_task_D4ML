provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  iam_instance_profile = var.iam_instance_profile

  user_data = file("user_data.sh")
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"
}