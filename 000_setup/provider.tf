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

provider "azurerm" {
  features {}
}