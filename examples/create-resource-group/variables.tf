#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

variable "is_new_resource_group" {
  type        = bool
  description = "Enable this to provision a new resource group (true/false)"
  default     = true
}

variable "ibmcloud_api_key" {
  description = "IBM Cloud API Key"
}

variable "name" {
  description = "Name of resource group."
  type        = string
}