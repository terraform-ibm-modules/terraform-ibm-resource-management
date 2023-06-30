#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

output "resource_group_id" {
  description = "Resource group id"
  value       = var.is_new_resource_group ? ibm_resource_group.resource_group[0].id : data.ibm_resource_group.resource_group[0].id
}

output "resource_group_name" {
  description = "Resource group name"
  value       = var.is_new_resource_group ? ibm_resource_group.resource_group[0].name : data.ibm_resource_group.resource_group[0].name
}

output "resource_group_crn" {
  description = "Resource group CRN"
  value       = var.is_new_resource_group ? ibm_resource_group.resource_group[0].crn : data.ibm_resource_group.resource_group[0].crn
}

output "resource_group_state" {
  description = "resource group State"
  value       = var.is_new_resource_group ? ibm_resource_group.resource_group[0].state : data.ibm_resource_group.resource_group[0].state
}

output "payment_methods_url" {
  description = "The URL to access the payment methods details that is associated with the resource group"
  value       = var.is_new_resource_group ? ibm_resource_group.resource_group[0].payment_methods_url : data.ibm_resource_group.resource_group[0].payment_methods_url
}

output "quota_url" {
  description = "The URL to access the quota details that is associated with the resource group."
  value       = var.is_new_resource_group ? ibm_resource_group.resource_group[0].quota_url : data.ibm_resource_group.resource_group[0].quota_url
}

output "quota_id" {
  description = "An alpha-numeric value identifying the quota ID associated with the resource group."
  value       = var.is_new_resource_group ? ibm_resource_group.resource_group[0].quota_id : data.ibm_resource_group.resource_group[0].quota_id
}