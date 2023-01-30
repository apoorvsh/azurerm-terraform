resource "azurerm_storage_account" "storage-account" {
  name                     = var.Storage_Account_Name
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier             = var.Access_Tier
  account_replication_type = var.Account_Replication_Type
  tags                     = merge(var.Resource_Tags)
  //public_network_access_enabled = var.Public_Access
  is_hns_enabled = var.Hns_Enabled

}
