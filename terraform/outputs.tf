output "strapi_url" {
  description = "Public URL for Strapi CMS"
  value       = "http://${aws_instance.strapi_server.public_ip}:1337"
}

output "ec2_public_ip" {
  value = aws_instance.strapi_server.public_ip
}
