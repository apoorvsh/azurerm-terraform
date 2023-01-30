resource "azurerm_virtual_network" "Vnet" {
  name                = var.Vnet_Name
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  address_space       = [var.Vnet_Address]
  tags = merge(var.Resource_Tags)
}
