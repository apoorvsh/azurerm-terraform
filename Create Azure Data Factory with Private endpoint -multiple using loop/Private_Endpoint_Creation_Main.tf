resource "azurerm_private_endpoint" "adf-private-endpoint" {
  count               = length(var.Private_Endpoint_Name)
  name                = element(var.Private_Endpoint_Name, count.index)
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  subnet_id           = azurerm_subnet.subnet.id

  private_dns_zone_group {
    name                 = "privatednszonegroup"
    private_dns_zone_ids = [azurerm_private_dns_zone.adf-dns-zone.id]
  }

  private_service_connection {
    name                           = "adf-connection"
    private_connection_resource_id = element(azurerm_data_factory.adf.*.id, count.index)
    is_manual_connection           = false
    subresource_names              = [element(var.Adf_Target_Sub_Resource, count.index)]
  }
}
