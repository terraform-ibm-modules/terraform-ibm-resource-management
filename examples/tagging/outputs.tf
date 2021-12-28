#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

output "resource_ids" {
  description = "Resource id"
  value       = module.resource-tagging.resource_ids
}

output "tags" {
  description = "Tags attached to resource"
  value       = module.resource-tagging.tags
}