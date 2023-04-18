# This file contains all the variable inputs for the target infrastructure

resource_group_name_prefix = "rg-"                # Prefix for the resource group name
default_location           = "germanywestcentral" # Default location for the resource group
use_for_each               = false                # Use for_each for the resource group




# Default tags for the resource group
default_tags = {
  "environment" = "dev"
  "owner"       = "me"
}
