resource "azurerm_subnet" "Subent" {
  count                = length(var.Subnet_Name)
  name                 = element(var.Subnet_Name, count.index)
  resource_group_name  = azurerm_resource_group.RG[0].name
  virtual_network_name = azurerm_virtual_network.Vnet[0].name
  address_prefixes     = [element(var.Subnet_Address, count.index)]
}

resource "azurerm_subnet" "Subent_B" {
  count                = length(var.Subnet_B_Name)
  name                 = element(var.Subnet_B_Name, count.index)
  resource_group_name  = azurerm_resource_group.RG[0].name
  virtual_network_name = azurerm_virtual_network.Vnet[1].name
  address_prefixes     = [element(var.Subnet_B_Address, count.index)]

}

resource "azurerm_subnet" "Subent_C" {
  count                = length(var.Subnet_C_Name)
  name                 = element(var.Subnet_C_Name, count.index)
  resource_group_name  = azurerm_resource_group.RG[1].name
  virtual_network_name = element(azurerm_virtual_network.Vnet_B.*.name, count.index)
  address_prefixes     = [element(var.Subnet_C_Address, count.index)]

}

