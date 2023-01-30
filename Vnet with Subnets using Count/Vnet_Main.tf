resource "azurerm_virtual_network" "Vnet" {
  count               = length(var.Vnet_Name)
  name                = element(var.Vnet_Name, count.index)
  location            = azurerm_resource_group.RG[0].location
  resource_group_name = azurerm_resource_group.RG[0].name
  address_space       = [element(var.Vnet_Address, count.index)]
  tags                = merge(var.Resource_Tags)
}

resource "azurerm_virtual_network" "Vnet_B" {
  count               = length(var.Vnet_B_Name)
  name                = element(var.Vnet_B_Name, count.index)
  location            = azurerm_resource_group.RG[1].location
  resource_group_name = azurerm_resource_group.RG[1].name
  address_space       = [element(var.Vnet_B_Address, count.index)]
  tags                = merge(var.Resource_Tags)
}