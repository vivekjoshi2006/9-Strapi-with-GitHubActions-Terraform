resource "aws_instance" "strapi_server" {
  # ... other config (ami, instance_type, etc)

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install -y docker.io
              sudo systemctl start docker
              sudo systemctl enable docker
              
              # Pull the image you just pushed in CI
              sudo docker pull ${secrets.DOCKERHUB_USERNAME}/strapi-aws:latest
              
              # Run the container
              sudo docker run -d -p 1337:1337 --name strapi-app ${secrets.DOCKERHUB_USERNAME}/strapi-aws:latest
              EOF
}
