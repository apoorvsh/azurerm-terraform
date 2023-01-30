resource "azurerm_network_security_group" "NSG" {
  count               = length(var.Nsg_Name)
  name                = element(var.Nsg_Name, count.index)
  location            = var.Resources_Location
  resource_group_name = var.Rg_Name

  security_rule {
    name                       = element(var.Security_Rule_Name, count.index)
    priority                   = element(var.Priority, count.index)
    direction                  = element(var.Direction, count.index)
    access                     = element(var.Access, count.index)
    protocol                   = element(var.Protocol, count.index)
    source_port_range          = element(var.Source_Port_Range, count.index)
    destination_port_range     = element(var.Destination_Port_Range, count.index)
    source_address_prefix      = element(var.Source_Address_Prefix, count.index)
    destination_address_prefix = element(var.Destination_Address_Prefix, count.index)
  }
  tags = merge(var.Resource_Tags)
}