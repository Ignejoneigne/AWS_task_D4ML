variable "AWS_REGION" {
  type    = string
  default = "eu-central-1"
}

variable "PRIVATE_IP_CIDR" {
  type    = string
  default = "192.168.1.147/32"
}

variable "S3_BUCKET_NAME" {
  type    = string
  default = "d4ml-bucket/Ignes"
}

variable "AMI_ID" {
  type    = string
  default = "ami-08a34e890d3f70022"
}

variable "KEY_PAIR_NAME" {
  type    = string
  default = "ignekp"
}

variable "IAM_INSTANCE_PROFILE" {
  type    = string
  default = "role-d4ml-cloud9-deployment"
}

variable "SECURITY_GROUP" {
  type    = string
  default = "igne_group_2023"
}

variable "INSTANCE_TYPE" {
  type    = string
  default = "t2.micro"
}

variable "INSTANCE_NAME" {
  type    = string
  default = "AWS_Igne"
}

variable "user_data" {
  type    = string
  default = "cd AWS_task"
}
