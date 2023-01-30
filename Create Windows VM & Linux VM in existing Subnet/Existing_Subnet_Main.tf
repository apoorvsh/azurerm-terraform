data "azurerm_subnet" "subnet" {
  count                = length(var.Subnet_Name)
  name                 = element(var.Subnet_Name, count.index)
  virtual_network_name = var.Vnet_Name
  resource_group_name  = var.Rg_Name
}

