variable "resource_group_name" {
  default     = "test"
  description = "default: test"
  sensitive   = true
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "prefix of the resource group name combined with random id for unique azure subscription."
}

variable "default_location" {
  type       = string
  default     = "germanywestcentral"
  description = "default location for my configurations: ger-west-central"
}

variable "use_for_each" {
  type    = bool
  default = true
  description = "value for use_for_each in vnet module"
}
