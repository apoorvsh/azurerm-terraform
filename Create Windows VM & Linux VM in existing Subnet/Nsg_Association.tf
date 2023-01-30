resource "azurerm_subnet_network_security_group_association" "assignNsg" {
  count                     = length(var.Nsg_Name)
  subnet_id                 = element(data.azurerm_subnet.subnet.*.id, count.index)
  network_security_group_id = element(azurerm_network_security_group.NSG.*.id, count.index)
}