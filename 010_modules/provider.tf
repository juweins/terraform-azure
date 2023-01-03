# configuration of azure provider

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.30.0"
    }
  }

  required_version = ">= 1.1.0"
}

# set this feature to easily destroy your builds (experimental, not recommended for production)
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}