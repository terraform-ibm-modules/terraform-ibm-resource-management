#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
}

###################################################################
# Attach tags to resources
###################################################################
module "resource-tagging" {
  //Uncomment the following line to point the source to terraform registry level
  //source = "git::https://github.com/terraform-ibm-modules/terraform-ibm-resource-management.git"

  source                = "../../"
  is_new_resource_group = var.is_new_resource_group
  name                  = var.name
  resource_ids          = var.resource_ids
  resource_type         = var.resource_type
  tags                  = var.tags
  tag_type              = var.tag_type
}