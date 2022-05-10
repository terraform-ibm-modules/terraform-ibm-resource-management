output "resource_group_id" {
  description = "resource group id"
  value       = var.provision ? ibm_resource_group.resource_group[0].id : data.ibm_resource_group.resource_group[0].id
}

output "provision" {
  description = "Flag indicating whether new resource group was provisioned or not"
  value       = var.provision
}
