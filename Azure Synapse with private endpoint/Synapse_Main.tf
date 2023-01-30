resource "azurerm_synapse_workspace" "synapse" {
  name                                 = var.Synaspe_Name
  resource_group_name                  = azurerm_resource_group.RG.name
  location                             = azurerm_resource_group.RG.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.data-file.id
  tags                                 = merge(var.Resource_Tags)
  sql_administrator_login              = data.azurerm_key_vault_secret.existing-key-vault-secrets-username.value
  sql_administrator_login_password     = data.azurerm_key_vault_secret.existing-key-vault-secrets-password.value

  aad_admin {
    login     = "AzureAD Admin"
    object_id = data.azurerm_client_config.terraform.object_id
    tenant_id = data.azurerm_client_config.terraform.tenant_id
  }

  identity {
    type = "SystemAssigned"
  }

}