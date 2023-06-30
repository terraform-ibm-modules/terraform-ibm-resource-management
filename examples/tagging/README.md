# Example for attaching tags to cloud resource

This module is used to attach tags to resources

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
provider "ibm" {
}

module "resource-tagging" {
  source         = "../../modules/tagging"

  resource_ids   = var.resource_ids
  resource_type  = var.resource_type
  tags           = var.tags
  tag_type       = var.tag_type
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs


| Name            | Description                                                      | Type   | Default | Required |
|-----------------|------------------------------------------------------------------|:-------|---------|----------|
| resource\_ids   | List of CRN/resource_id of the resource on which the tags should be attached  | List   | n/a     | yes      |
| resource\_type  | Resource type on which the tags should be attached               | string | n/a        | no       |
| tags            | Tags for the resource                                            | List   | n/a        | yes      |
| tags_type       | Type of the tag. Only allowed values are: user, or service or access (default value : user) | string   | user  | no  |

## Outputs

| Name                      | Description                                   |
|---------------------------|-----------------------------------------------|
| resource_ids              | Resource Id's                                 |
| tags                      | Tags attached to resources                    |