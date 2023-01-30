resource "azurerm_network_security_group" "NSG" {
  name                = var.Nsg_Name
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name

  security_rule {
    name                       = var.Security_Rule_Name
    priority                   = var.Priority
    direction                  = var.Direction
    access                     = var.Access
    protocol                   = var.Protocol
    source_port_range          = var.Source_Port_Range
    destination_port_range     = var.Destination_Port_Range
    source_address_prefix      = var.Source_Address_Prefix
    destination_address_prefix = var.Destination_Address_Prefix
  }
  tags = merge(var.Resource_Tags)
}