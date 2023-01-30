resource "azurerm_private_endpoint" "storage-private-endpoint" {
  count               = length(var.Private_Endpoint_Name)
  name                = element(var.Private_Endpoint_Name, count.index)
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  subnet_id           = azurerm_subnet.subnet.id
  tags                = merge(var.Resource_Tags)

  private_dns_zone_group {
    name                 = "privatednszonegroup"
    private_dns_zone_ids = [element(azurerm_private_dns_zone.storage-account-dns-zone.*.id, count.index)]
  }

  private_service_connection {
    name                           = "storage-connection"
    private_connection_resource_id = azurerm_storage_account.storage-account.id
    is_manual_connection           = element(var.Is_Manual_Connection, count.index)
    subresource_names              = [element(var.Storage_Target_Sub_Resource, count.index)]
  }
}
