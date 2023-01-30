data "azurerm_key_vault_secret" "existing-key-vault-secrets-username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.existing-key-vault.id
}

output "username_secret_value" {
  value     = data.azurerm_key_vault_secret.existing-key-vault-secrets-username.value
  sensitive = true
}

data "azurerm_key_vault_secret" "existing-key-vault-secrets-password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.existing-key-vault.id
}

output "password_secret_vaule" {
  value     = data.azurerm_key_vault_secret.existing-key-vault-secrets-password.value
  sensitive = true
}