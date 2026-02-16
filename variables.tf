variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "key_name" {
  description = "The name of the EC2 key pair"
  type        = string
  default     = "strapi-key"
}