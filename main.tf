resource "aws_security_group" "strapi_sg" {
  name        = "strapi_sg_new"
  description = "Allow SSH and Strapi"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "strapi_server" {
  ami           = "ami-0e2c8ccd4e0269736" # Amazon Linux 2023
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.strapi_sg.id]

  # This script runs on boot to pull your Docker image
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y docker
              systemctl start docker
              systemctl enable docker
              docker run -d -p 1337:1337 --name strapi-app ${var.docker_image}
              EOF

  tags = {
    Name = "Strapi-Vivek-Deployment"
  }
}