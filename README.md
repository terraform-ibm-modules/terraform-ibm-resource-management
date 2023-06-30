# IBM resource-management Terraform Module

---

## Module archived

:spider_web: This repo is no longer maintained and is archived. Use the following public module if you consume the module from GitHub: [terraform-ibm-resource-group](https://github.com/terraform-ibm-modules/terraform-ibm-resource-group)


## Changes if you use the Hashicorp registry

:exclamation: **Important:**  This module will be deleted from the Hashicorp registry on 1 August 2023. 

If you  consume the module from the Hashicorp registry, use [resource-group](https://registry.terraform.io/modules/terraform-ibm-modules/resource-group/ibm/latest) instead.

---

This is a collection of modules that make it easier to provision resource management resources on IBM Cloud Platform:

* resource-group

## Compatibility

This module is meant for use with Terraform version >= 0.13.

## Usage

Examples are in the `examples` folder, but basic usage is as follows for creation of namespace and action :

```hcl
provider "ibm" {
}

module "resource_group" {
  //Uncomment the following line to point the source to terraform registry level
  //source = "terraform-ibm-modules/resource-management/ibm//modules/resource-group"

  source = "../../modules/resource-group"
  provision = var.provision
  name      = var.name
}

```

## NOTE:

If we want to make use of a particular version of module, then set the argument "version" to respective module version.

## Requirements

### Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) >= 0.13
- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm)

## Install

### Terraform

Be sure you have the correct Terraform version (0.13), you can choose the binary here:
- https://releases.hashicorp.com/terraform/

### Terraform plugins

Be sure you have the compiled plugins on $HOME/.terraform.d/plugins/

- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm)

### Pre-commit Hooks

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

To run the test cases

`go test -v -timeout 15m -run <TestFunctinName>`

All optional parameters by default will be set to null in respective example's varaible.tf file. If user wants to configure any optional paramter he has overwrite the default value.

## Note

All optional fields should be given value `null` in respective resource varaible.tf file. User can configure the same by overwriting with appropriate values.

