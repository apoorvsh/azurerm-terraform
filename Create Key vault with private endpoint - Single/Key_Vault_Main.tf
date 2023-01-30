resource "azurerm_key_vault" "key-vault" {
  name                          = var.Key_Vault_Name
  location                      = azurerm_resource_group.RG.location
  tags                          = merge(var.Resource_Tags)
  resource_group_name           = azurerm_resource_group.RG.name
  enabled_for_disk_encryption   = var.Enabled_For_Disk_Encryption
  tenant_id                     = data.azurerm_client_config.terraform.tenant_id
  soft_delete_retention_days    = var.Soft_Delete_Retention_Days
  purge_protection_enabled      = var.Purge_Protection_Enabled
  public_network_access_enabled = var.Public_Network_Access_Enabled
  sku_name                      = var.Key_Vault_Sku

  access_policy {
    tenant_id = data.azurerm_client_config.terraform.tenant_id
    object_id = data.azurerm_client_config.terraform.object_id

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover"
    ]
  }
}