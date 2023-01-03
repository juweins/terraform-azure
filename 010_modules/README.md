# 110_modules

## Overview
In this example I demonstrate how you can easily deploy a Azure VNet by using the respective module found in the registry. Modules are developed to make provisioning of commonly used ressources easier. It does so, by bundling up various services into one module. (You may think of it as a preconfigured workflow) 

Therefore, we do not need to worry about dependencies and the exact order each services must be created. One can easily develop their own module and make them publicly available by listing them in the official registry: registry.terrafrom.io

We can simply call the module and pass required arguments. Nice!

## Setting up a VNet in one step

You can simply set up a VNet in your azure account by using the Vnet module.

Instead of setting up subnets, a network security group and a routing table manually, this module will handle it for you by default.

Here you can find the required documentation:
[Azure VNet module Documentation](https://registry.terraform.io/modules/Azure/vnet/azurerm/latest?tab=inputs)

