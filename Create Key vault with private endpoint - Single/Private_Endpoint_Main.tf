resource "azurerm_private_endpoint" "key-vault-private-endpoint" {
  name                = var.Private_Endpoint_Name
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  subnet_id           = azurerm_subnet.subnet.id

  private_dns_zone_group {
    name                 = "privatednszonegroup"
    private_dns_zone_ids = [azurerm_private_dns_zone.key-vault-dns-zone.id]
  }

  private_service_connection {
    name                           = "key-vault-connection"
    private_connection_resource_id = azurerm_key_vault.key-vault.id
    is_manual_connection           = false
    subresource_names              = [var.Key_Vault_Target_Sub_Resource]
  }
}
