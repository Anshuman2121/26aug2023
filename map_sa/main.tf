resource "azurerm_storage_account" "example" {
  for_each = var.storage_account
  name                     = each.key
  resource_group_name      = each.value.rg
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  tags = {
    environment = "staging"
  }
}

