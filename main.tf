#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

###################################################################
# Create resource group
###################################################################
resource "ibm_resource_group" "resource_group" {
  count = var.is_new_resource_group ? 1 : 0
  name  = var.name
}

###################################################################
# Read resource group
###################################################################
data "ibm_resource_group" "resource_group" {
  count = var.is_new_resource_group ? 0 : 1
  name  = var.name
}

###################################################################
# Attach tags to resources
###################################################################
resource "ibm_resource_tag" "attach_tag" {
  count = length(var.resource_ids)

  resource_id   = element(var.resource_ids, count.index)
  resource_type = var.resource_type != null ? var.resource_type : null
  tags          = var.tags
  tag_type      = var.tag_type
}