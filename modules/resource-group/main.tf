resource ibm_resource_group resource_group {
  count = var.provision ? 1 : 0
  name  = var.name
}

data ibm_resource_group resource_group {
  count = var.provision ? 0 : 1
  name  = var.name
}