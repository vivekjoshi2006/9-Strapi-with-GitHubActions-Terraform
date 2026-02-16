variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "docker_image" {
  description = "Docker Hub image name"
  type        = string
  default     = "vivekjoshi20/strapi-aws:latest"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}
