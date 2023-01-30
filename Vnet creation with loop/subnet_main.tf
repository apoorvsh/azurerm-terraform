resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_name)
  name                 = element(var.subnet_name, count.index)
  resource_group_name  = element(azurerm_resource_group.Rg.*.name, count.index)
  virtual_network_name = element(azurerm_virtual_network.vnet.*.name, count.index)
  address_prefixes     = [element(var.subnet_Address, count.index)]
}