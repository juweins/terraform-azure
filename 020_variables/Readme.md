# 020_modules

## Overview
In this example I demonstrate how you can easily enhance readability by seperating your variables into a dedicated file. In addition to that, it is possible to mark a variable as sensitive. Sensitive variables will not be printed out in your execution plan. Furthermore, these variables are input only, so you can not retrieve the value of it by using e.g. Terraform cloud console. This comes pretty handy when we are dealing with real sensitive data like API-keys, client-secrets, etc. 

## Variables, definitions and input files
We utilize the same module as in the previous example. However, we will now seperate the variables into a dedicated file. This will make it easier to read and maintain the code base. By providing a default value, we can also make the variable input optional. Therefore, we do not need to pass it as an argument when calling the module. (For example if you quickly want to test the module)

### Variable Defionition Files (aka tfvars)
We are now able to pass the created input.tfvars file as an argument to the terraform command. This will automatically load the variables from the file and make them available to the infrastructure configuration. 

```bash
terraform apply -var-file="input.tfvars"
```

> **Note**: This is a **highly recommended approach** when using variables. It will gather all variables in one place and thus make it easier to maintain. This is especially true if you are working in a team. It also provides you with the ability to easily switch between **different environments** (like common 3 tier systems) by simply changing the input file.

Terraform follows a specific order when loading variables, where terraform prioritizes variables in the following order:
1. OS Environment variables (e.g. ```export TF_VAR_name="value"```)
2. Variable definitions in .tfvars files
3. Variable definitions/defaults in .tf files 

Further reading:
[HCTF - Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)

