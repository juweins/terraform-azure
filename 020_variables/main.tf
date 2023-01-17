resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.default_location

}

module "vnet" {
  source              = "Azure/vnet/azurerm"
  version             = "4.0.0"
  resource_group_name = var.resource_group_name
  use_for_each        = var.use_for_each
  vnet_location       = var.default_location

}