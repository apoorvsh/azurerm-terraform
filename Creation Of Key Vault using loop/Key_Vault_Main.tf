resource "azurerm_key_vault" "key-vault" {
  count                       = length(var.Key_Vault_Name)
  name                        = element(var.Key_Vault_Name, count.index)
  location                    = azurerm_resource_group.RG.location
  tags                        = merge(var.Resource_Tags)
  resource_group_name         = azurerm_resource_group.RG.name
  enabled_for_disk_encryption = element(var.Enabled_For_Disk_Encryption, count.index)
  tenant_id                   = data.azurerm_client_config.terraform.tenant_id
  soft_delete_retention_days  = element(var.Soft_Delete_Retention_Days, count.index)
  purge_protection_enabled    = element(var.Purge_Protection_Enabled, count.index)

  sku_name = element(var.Key_Vault_Sku, count.index)

  access_policy {
    tenant_id = data.azurerm_client_config.terraform.tenant_id
    object_id = data.azurerm_client_config.terraform.object_id

    secret_permissions = [
      element(var.Secret_Permissions, count.index)
    ]
  }
}