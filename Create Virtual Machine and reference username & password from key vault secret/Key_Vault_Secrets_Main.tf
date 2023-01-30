resource "azurerm_key_vault_secret" "secrets-username" {
  count        = length(var.Key_Vault_Secrets_Name)
  name         = element(var.Key_Vault_Secrets_Name, count.index)
  value        = element(var.Key_Vault_Value, count.index)
  key_vault_id = element(azurerm_key_vault.key-vault.*.id, count.index)
}

resource "azurerm_key_vault_secret" "secrets-password" {
  count        = length(var.Password_Secrets_Name)
  name         = element(var.Password_Secrets_Name, count.index)
  value        = element(var.Password_Secrets_Value, count.index)
  key_vault_id = element(azurerm_key_vault.key-vault.*.id, count.index)
}