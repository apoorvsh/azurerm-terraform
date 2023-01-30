resource "azurerm_subnet" "subnet_A" {
  name                 = var.Subnet_A_Name
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.Vnet.name
  address_prefixes     = [var.Subnet_A_Address]

}

resource "azurerm_subnet" "subnet_B" {
  name                 = var.Subnet_B_Name
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.Vnet.name
  address_prefixes     = [var.Subnet_B_Address]

}