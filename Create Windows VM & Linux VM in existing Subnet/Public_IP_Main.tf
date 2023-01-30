resource "azurerm_public_ip" "publicIP" {
  count               = length(var.Public_IP_Name)
  name                = element(var.Public_IP_Name, count.index)
  resource_group_name = var.Rg_Name
  location            = var.Resources_Location
  allocation_method   = element(var.Allocation_Method, count.index)
  tags                = merge(var.Resource_Tags)
}