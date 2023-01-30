resource "azurerm_subnet_network_security_group_association" "assignNsg" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.NSG.id
}