# configuration of azure provider

# if you are using TFC, the required_provider is part of backend.tf (mandatory!)

# set this feature to easily destroy your builds (experimental, not recommended for production)
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}