resource "azurerm_public_ip" "publicIP" {
  name                = var.Public_IP_Name
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  allocation_method   = var.Allocation_Method
  tags                = merge(var.Resource_Tags)
}