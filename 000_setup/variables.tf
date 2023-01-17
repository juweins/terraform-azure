variable "resource_group_name" {
  default     = "test"
  description = "default: test"
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "prefix of the resource group name combined with random id for unique azure subscription."
}

variable "default_location" {
  default     = "germanywestcentral"
  description = "default location for my configurations: ger-west-central"
}

variable "use_for_each" {
  type    = bool
  default = true
}