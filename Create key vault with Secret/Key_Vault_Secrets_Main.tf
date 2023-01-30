resource "azurerm_key_vault_secret" "key-vault-secrets" {
  count        = length(var.Key_Vault_Secrets_Name)
  name         = element(var.Key_Vault_Secrets_Name, count.index)
  value        = element(var.Key_Vault_Value, count.index)
  key_vault_id = element(azurerm_key_vault.key-vault.*.id, count.index)
}