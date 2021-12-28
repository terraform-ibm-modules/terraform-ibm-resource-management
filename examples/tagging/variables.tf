#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

##################################################
# Resource Group Variables
##################################################
variable "ibmcloud_api_key" {
  description = "IBM Cloud API Key"
}

variable "is_new_resource_group" {
  type        = bool
  description = "Enable this to provision a new resource group (true/false)"
  default     = false
}

variable "name" {
  description = "Name of resource group"
  type        = string
  default     = "default"
}

##################################################
# Tagging Variables
##################################################
variable "resource_ids" {
  description = "CRN of the resource on which the tags should be attached"
  type        = list(string)
  default     = []
}

variable "resource_type" {
  description = "Resource type on which the tags should be attached"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags for the resource"
  type        = list(string)
  default     = ["env:prod"]

  validation {
    condition     = can([for s in var.tags : regex("^[a-zA-Z0-9:]+$", s)])
    error_message = "Tags must be of the form `key:value`."
  }
}

variable "tag_type" {
  description = "Type of the tag. Only allowed values are: user, or service or access (default value : user)"
  type        = string
  default     = "user"
}

