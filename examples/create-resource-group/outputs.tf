#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

output "resource_group_id" {
  description = "Resource group id"
  value       = module.resource-group.resource_group_id
}

output "resource_group_name" {
  description = "Resource group name"
  value       = module.resource-group.resource_group_name
}

output "resource_group_crn" {
  description = "Resource group CRN"
  value       = module.resource-group.resource_group_crn
}

output "resource_group_state" {
  description = "resource group State"
  value       = module.resource-group.resource_group_state
}

output "payment_methods_url" {
  description = "The URL to access the payment methods details that is associated with the resource group"
  value       = module.resource-group.payment_methods_url
}

output "quota_url" {
  description = "The URL to access the quota details that is associated with the resource group."
  value       = module.resource-group.quota_url
}

output "quota_id" {
  description = "An alpha-numeric value identifying the quota ID associated with the resource group."
  value       = module.resource-group.quota_id
}