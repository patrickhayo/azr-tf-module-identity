terraform {
  required_version = ">=0.14.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.36.0"
    }
  }
}

locals {
  module_tag = {
    "module" = basename(abspath(path.module))
  }
  tags = merge(var.tags, local.module_tag)
}

resource "azurerm_user_assigned_identity" "identity" {
  for_each = { for identity in var.identities : identity.name => identity }

  name                = "${each.key}_Identity"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  tags                = each.value.tags

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
