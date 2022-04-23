# Instance Id and public IP of the launched instance would be displayed as output of tf apply.
output "instanceId" {
  value = module.compute.instanceId
}
output "publicIP" {
  value = module.compute.publicIP
}