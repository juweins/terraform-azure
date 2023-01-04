# Sets your backend provider
terraform {
  cloud {
    organization = "YOUR_ORGANIZATION" # replace with your own HCP org

    workspaces {
      name = "YOUR_WORKSPACE" # replace with your own HCP org
    }
  }
}
# This line is a required setting when you initialize a backend config. 
# You can set this multiple times to add additional providers.
required_providers {
        # Sets your aws backend config. 
        # You can also set custom providers like azurerm, gcp, and vsphere here.
    azurerm = {
            # Specifies the location of your config for this backend.
    source  = "hashicorp/azurerm"
            # Specifies the version of your Backend Provider.
    version = "~> 3.30.0"
    }
}