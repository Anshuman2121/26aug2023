resource "azurerm_resource_group" "terraformrg1" {
  for_each = toset(var.rg)
  name     = each.key
  location = var.location
}

