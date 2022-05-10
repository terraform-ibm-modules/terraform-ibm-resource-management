variable "name" {
  description = "Name of resource group."
  type        = string
}

variable "provision" {
  type        = bool
  description = "Enable this to provision a new resource group (true/false)"
  default     = true
}
