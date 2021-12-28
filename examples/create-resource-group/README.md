# Example for creating resource-group

This module is used to create a resource group.

## Compatibility

This module is meant for use with Terraform 0.13 or later.

## Requirements

### Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) 0.13 or later.
- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm)

## Install

### Terraform

Be sure you have the correct Terraform version ( 0.13 or later), you can choose the binary here:
- https://releases.hashicorp.com/terraform/

### Terraform provider plugins

Be sure you have the compiled plugins on $HOME/.terraform.d/plugins/

- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm)

## Usage

```
terraform init
```
```
terraform plan
```
```
terraform apply
```
```
terraform destroy
```

## Example Usage
```
module "resource_group" {
  //Uncomment the following line to point the source to terraform registry level
  //source = "terraform-ibm-modules/resource-management/ibm//modules/resource-group"

  source                = "../../modules/resource-group"
  is_new_resource_group = var.is_new_resource_group
  name                  = var.name
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                              | Type     | Default | Required |
|-----------------------------------|----------------------------------------------------------|----------|---------|----------|
| is_new_resource_group             | Enable this to is_new_resource_group a new resource group| bool     | true    | no       |
| name                              | Name of the resource group.                              | string   | n/a     | yes      |

## Outputs

| Name                      | Description                                                                                 |
|---------------------------|---------------------------------------------------------------------------------------------|
| resource_group_id         | Resource group id                                                                           |
| resource_group_name       | Resource group name                                                                         |
| resource_group_crn        | Resource group CRN                                                                          |
| resource_group_state      | Resource group state                                                                        |
| payment_methods_url       | The URL to access the payment methods details that is associated with the resource group    |
| quota_url                 | The URL to access the quota details that is associated with the resource group              |
| quota_id                  | An alpha-numeric value identifying the quota ID associated with the resource group          |