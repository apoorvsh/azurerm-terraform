resource "azurerm_private_dns_zone_virtual_network_link" "adf-link" {
  name                  = var.Private_Dns_Zone_Name
  resource_group_name   = azurerm_resource_group.RG.name
  private_dns_zone_name = azurerm_private_dns_zone.adf-dns-zone.name
  virtual_network_id    = azurerm_virtual_network.Vnet.id
}