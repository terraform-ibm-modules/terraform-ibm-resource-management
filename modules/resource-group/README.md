# resource-group creation module example

This module is used to create a resource group.

## Example Usage
```
module "resource_group" {
  //Uncomment the following line to point the source to terraform registry level
  //source = "terraform-ibm-modules/resource-management/ibm//modules/resource-group"

  source = "../../modules/resource-group"
  provision = var.provision
  name      = var.name
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type         | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------------|---------|----------|
| name                              | Name of the resource group.                           | string       | n/a     | yes      |
| provision                         | Enable this to provision a new resource group.        | bool         | n/a     | no       |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Usage

terraform apply - to create the infrastructure

terraform detroy - to destroy the infrastructure

## Note

All optional fields are given value `null` in varaible.tf file. User can configure the same by overwriting with appropriate values.

## Outputs

| Name                              | Description                                                        |
|-----------------------------------|--------------------------------------------------------------------|
| resource_group_id                 | Resource group id                                                  |
| provision                         | Flag indicating whether the resource group was provisioned or not  |


