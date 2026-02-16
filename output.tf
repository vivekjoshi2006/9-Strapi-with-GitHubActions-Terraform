output "ec2_public_ip" {
  description = "The Public IP of your Strapi Server"
  value       = aws_instance.strapi_server.public_ip
}

output "strapi_admin_url" {
  description = "Click this link to verify your deployment"
  value       = "http://${aws_instance.strapi_server.public_ip}:1337/admin"
}