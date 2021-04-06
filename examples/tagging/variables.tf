variable "resource_ids" {
  description = "CRN of the resource on which the tags should be attached"
  type        = list(string)
}

variable "resource_type" {
  description = "Resource type on which the tags should be attached"
  type        = string
  default     = ""
}

variable "tag_names" {
  description = "Tags for the resource"
  type        = list(string)
  default     = ["env:prod"]

  validation {
      condition     = can([for s in var.tag_names : regex("^[a-zA-Z0-9:]+$", s)])
      error_message = "Tags must be of the form `key:value`."
  }
}

