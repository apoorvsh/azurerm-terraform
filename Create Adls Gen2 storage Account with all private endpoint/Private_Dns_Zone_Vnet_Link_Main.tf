resource "azurerm_private_dns_zone_virtual_network_link" "storage-link" {
  count                 = length(var.Private_Dns_Zone_Name)
  name                  = element(var.Private_Dns_Zone_Name, count.index)
  resource_group_name   = azurerm_resource_group.RG.name
  private_dns_zone_name = element(azurerm_private_dns_zone.storage-account-dns-zone.*.name, count.index)
  virtual_network_id    = azurerm_virtual_network.Vnet.id
}