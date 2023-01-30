resource "azurerm_network_interface" "Nic" {
  count               = length(var.Nic_Name)
  name                = element(var.Nic_Name, count.index)
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = element(var.Private_Ip_Address_Allocation, count.index)
    public_ip_address_id          = element(azurerm_public_ip.publicIP.*.id, count.index)
  }
  tags = merge(var.Resource_Tags)
}