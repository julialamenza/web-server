# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-2d890a5a"
    us-east-1 = "ami-8547fa98"
  
  }
}

variable "elb_sg_id" {
  type = string
}

variable "default_sg_id" {
  type = string
}

variable "default_subnet_id" {
  type = string
}

variable "key_id" {
  type = string
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

variable "app_version" {
  type = string
}