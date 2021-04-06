# IBM Cloud Resource Tag Module

Below module that make it easier to attach tags to IBM Cloud resources:
* [tagging](modules/tagging)


## Overview
Tags are uniquely identified by a Cloud Resource Naming (CRN) identifier. Tags have a name, which must be unique within a billing account. You can make tags in key:value or label format.

https://cloud.ibm.com/apidocs/tagging

## Compatibility

This module is meant for use with Terraform 0.13 or later. 

## Requirements

### Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) 0.13 or later. 
- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm) 

### Terraform

Be sure you have the correct Terraform version ( 0.13 or later), you can choose the binary here:
- https://releases.hashicorp.com/terraform/

### Terraform provider plugins

Be sure you have the compiled plugins on $HOME/.terraform.d/plugins/

- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm) 
