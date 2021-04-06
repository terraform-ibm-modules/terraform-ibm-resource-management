# Resource Tagging Module

This module is used to attach tags to resources

## Example Usage
```
provider "ibm" {
}

module "resource-tagging" {
  source         = "../../modules/tagging"

  resource_ids   = var.resource_ids
  resource_type  = var.resource_type 
  tag_names      = var.tag_names
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs


| Name            | Description                                                      | Type   | Default | Required |
|-----------------|------------------------------------------------------------------|:-------|---------|----------|
| resource\_ids   | list of CRN/resource_id of the resource on which the tags should be attached  | list   | n/a     | yes      |
| resource\_type  | Resource type on which the tags should be attached               | string | n/a     | no       |
| tag\_names      | Tags for the resource                                            | list   | n/a     | yes      |

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy"` when you don't need these resources.
