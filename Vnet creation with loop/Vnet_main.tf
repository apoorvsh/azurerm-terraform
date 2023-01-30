resource "azurerm_virtual_network" "vnet" {
  count               = length(var.vnet_name)
  name                = element(var.vnet_name, count.index)
  location            = element(azurerm_resource_group.Rg.*.location, count.index)
  resource_group_name = element(azurerm_resource_group.Rg.*.name, count.index)
  address_space       = [element(var.vnet_address, count.index)]

}