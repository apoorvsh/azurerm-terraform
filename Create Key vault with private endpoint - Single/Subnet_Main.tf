resource "azurerm_subnet" "subnet" {
  name                 = var.Subnet_Name
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.Vnet.name
  address_prefixes     = [var.Subnet_Address]
}
