# 000_getting_started

## Overview
This section is all about getting familiar with the basics of Terraform. After you followed the instructions to install terraform you need to create a service principal associated with your azure account.

You are then able to set up a basic terraform file to test if the connection works.

## Setting up a service principal

There are various ways to connect and authenticate to your azure account. Here you can find the required documentation:
[Set up a Service Principal (Azure)](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/guides/service_principal_configuration)

## Testing the connection

After you set up the principal and assigned the stated authorizations, you are able to perform your first terraform task.
I usually test connections by creating a ressource group, which spins up quite fast compared to other azure ressources. 

Although not necessary, I recommend you to follow the terraform best practises and keep your provider in a separate file. It is also a good advice to maintain a variables.tf file to prevent any ressource specific values (e.g. resource-names) in your main.tf. 

