resource "azurerm_network_interface" "Nic" {
  name                = var.Nic_Name
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = var.Private_Ip_Address_Allocation
    public_ip_address_id          = azurerm_public_ip.publicIP.id
  }
  tags = merge(var.Resource_Tags)
}