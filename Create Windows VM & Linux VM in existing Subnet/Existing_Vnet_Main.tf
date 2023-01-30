data "azurerm_virtual_network" "Vnet" {
  name                = var.Vnet_Name
  resource_group_name = var.Rg_Name
}