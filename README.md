# IBM Cloud Resource Management Terraform Module

This is a collection of modules that make it easier to provision resource management resources on IBM Cloud Platform:

* resource-group
* tagging

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

## Usage

Examples are in the `examples` folder, but basic usage is as follows for creation of namespace and action :

```hcl

provider "ibm" {
}

module "resource_management" {
  source                = "git::git@github.com:terraform-ibm-modules/terraform-ibm-resource-management.git"

  ######### resource-group ######################
  is_new_resource_group = var.is_new_resource_group
  name                  = var.name

  ######### tagging ######################
  resource_ids          = var.resource_ids
  resource_type         = var.resource_type
  tags                  = var.tags
  tag_type              = var.tag_type
}
```

## NOTE:

If we want to make use of a particular version of module, then set the argument "version" to respective module version.

## Inputs

| Name                    | Description                                                                  | Type   | Default | Required |
|-------------------------|------------------------------------------------------------------------------|:-------|---------|----------|
| is_new_resource_group   | Enable this to is_new_resource_group a new resource group                    | bool   | true    | no       |
| name                    | Name of the resource group.                                                  | string | n/a     | yes      |
| resource\_ids           | List of CRN/resource_id of the resource on which the tags should be attached | List   | n/a     | no       |
| resource\_type          | Resource type on which the tags should be attached                           | string | n/a     | no       |
| tags                    | Tags for the resource                                                        | List   | n/a     | no       |
| tags_type               | Type of the tag. Only allowed values are: user, or service or access (default value : user) | string   | user  | no  |

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
| resource_ids              | Resource Id's                                                                               |
| tags                      | Tags attached to resources                                                                  |

## Pre-commit Hooks

Run the following command to execute the pre-commit hooks defined in `.pre-commit-config.yaml` file

  `pre-commit run -a`

We can install pre-coomit tool using

  `pip install pre-commit`

## How to input varaible values through a file

To review the plan for the configuration defined (no resources actually provisioned)

`terraform plan -var-file=./input.tfvars`

To execute and start building the configuration defined in the plan (provisions resources)

`terraform apply -var-file=./input.tfvars`

To destroy the VPC and all related resources

`terraform destroy -var-file=./input.tfvars`

All optional parameters by default will be set to null in respective example's varaible.tf file. If user wants to configure any optional paramter he has overwrite the default value.

