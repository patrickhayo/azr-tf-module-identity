# azr-tf-module-identity

[Terraform](https://www.terraform.io) Module to create a **Managed Identities** in Azure

<!-- BEGIN_TF_DOCS -->
## Prerequisites

- [Terraform](https://releases.hashicorp.com/terraform/) v0.12+

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.36.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=2.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_user_assigned_identity.identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_identities"></a> [identities](#input\_identities) | Identity configuration | <pre>list(object({<br>    name                = string<br>    location            = string<br>    resource_group_name = string<br>    tags                = map(any)<br>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Specifies tags for all the resources | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_ids"></a> [client\_ids](#output\_client\_ids) | Contains a list of the the identity client\_id  of the identities |
| <a name="output_ids"></a> [ids](#output\_ids) | Contains a list of the the identity id of the identities |
| <a name="output_principal_ids"></a> [principal\_ids](#output\_principal\_ids) | Contains a list of the the identity principal\_id of the identities |
<!-- END_TF_DOCS -->

## Authors

Originally created by [Patrick Hayo](http://github.com/patrickhayo)

## License

[MIT](LICENSE) License - Copyright (c) 2022 by the Author.
