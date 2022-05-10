provider "ibm" {
}

module "resource_group" {
  //Uncomment the following line to point the source to terraform registry level
  //source = "terraform-ibm-modules/resource-management/ibm//modules/resource-group"

  source    = "../../modules/resource-group"
  provision = var.provision
  name      = var.name
}