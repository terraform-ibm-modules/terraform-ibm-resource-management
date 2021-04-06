resource "ibm_resource_tag" "tag" {
    count          = length(var.resource_ids)

    resource_id    = element(var.resource_ids, count.index)
    resource_type  = var.resource_type
    tag_names      = var.tag_names
}
