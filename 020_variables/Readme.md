# 020_modules

## Overview
In this example I demonstrate how you can easily enhance readability by seperating your variables into a dedicated file. In addition to that, it is possible to mark a variable as sensitive. Sensitive variables will not be printed out in your execution plan. Furthermore, these variables are input only, so you can not retrieve the value of it by using e.g. Terraform cloud console. This comes pretty handy when we are dealing with real sensitive data like API-keys, client-secrets, etc. 

The sensitivity is not universal - the variables will still show up as plain text in the state file! Be aware of that!

## Setting up a VNet in one step


Further reading:
[HCTF - Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)

