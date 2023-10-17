aws_region              = "eu-central-1"
private_ip_cidr         = "192.168.1.147/32"
s3_bucket_name          = "d4ml-bucket/Ignes"
ami_id                  = "ami-08a34e890d3f70022"
key_pair_name           = "ignekp"
iam_instance_profile = "role-d4ml-cloud9-deployment"
security_group          = "igne_group_2023"
instance_type           = "t2.micro"
instance_name           = "Terraform_Igne"