
#########################
#### Terraform Study ####
#########################
# This is the first example of my series for learning terraform on azure.
# Here we simply define a resource group to check if everything is set up properly 
# (e.g. the mandatory service principal for communication to azure)

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.default_location
}
