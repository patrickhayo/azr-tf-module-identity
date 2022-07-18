resource "azurerm_resource_group" "this" {
  name     = uuid()
  location = "westeurope"
}

module "identities" {
  source = "./module"
  identities = [
    {
      name : "Example_1_identity"
      location : azurerm_resource_group.this.location
      resource_group_name : azurerm_resource_group.this.name
      tags : var.tags
    },
    {
      name : "Example_2_identity"
      location : azurerm_resource_group.this.location
      resource_group_name : azurerm_resource_group.this.name
      tags : var.tags
    }
  ]
}

output "identity_ids" {
  value = module.identities.ids
}
