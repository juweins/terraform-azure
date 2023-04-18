# 030_existing_resources

## Overview
In this example I demonstrate how you can reference existing resources in your infrastructure. This is especially useful if you start using Terraform in an existing environment, which is the case for most of us.

## Scenario
We will reference an existing resource group and the provisioned vnet from the previous examples. We will then create a subnet and add it to the existing vnet.

This way, we can easily separate the infrastructure into multiple stages. That being said, we are now able to package the infrastructure into multiple modules and thus make it ready for a complex build pipeline. (CI/CD, which can be orchestrated to deploy the infrastructure in different system stages)

## Data Sources
Data sources are the common way to retrieve information about existing resources. This information can then be used in our module to configure new resources in reference to these existing ones. Terraform allows you to reference any data source which is supported by your initialized provider.
In our example we will use the data source to retrieve the resource group id of an existing resource group. This id will then be used to create resources in this provided resource group.

We can use the following data source to retrieve the resource group id:
```bash
data "azurerm_resource_group" "rg" {
  # This is the name of the existing resource (mandatory)
  name = "rg-terraform-azure-vnet"
}
```

**TBD, WIP**

Further reading:
[HCTF - Data Sources](https://developer.hashicorp.com/terraform/language/data-sources)

