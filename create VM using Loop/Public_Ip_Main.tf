resource "azurerm_public_ip" "publicIP" {
  count               = length(var.Public_IP_Name)
  name                = element(var.Public_IP_Name, count.index)
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  allocation_method   = element(var.Allocation_Method, count.index)
  tags                = merge(var.Resource_Tags)
}