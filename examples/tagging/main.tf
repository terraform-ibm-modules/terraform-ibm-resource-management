module "resource-tagging" {
  source         = "../../modules/tagging"

  resource_ids   = var.resource_ids
  resource_type  = var.resource_type 
  tag_names      = var.tag_names
}
