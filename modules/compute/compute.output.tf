output "instanceId" {
  value = aws_instance.testapp_instance.id
}

output "publicIP" {
  value = aws_instance.testapp_instance.public_ip
}