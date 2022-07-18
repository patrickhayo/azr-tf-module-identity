<!-- BEGIN_TF_DOCS -->
# azr-tf-module-template

Terraform Module Template

## Providers

No providers.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.36.0 |

## Example

```hcl
resource "azurerm_resource_group" "this" {
  name     = uuid()
  location = "westeurope"
}
```

## Resources

No resources.

## Inputs

No inputs.

## Modules

No modules.

## Outputs

No outputs.

## Authors

Originally created by [Patrick Hayo](http://github.com/patrickhayo)

## License

[MIT](LICENSE)
<!-- END_TF_DOCS -->
