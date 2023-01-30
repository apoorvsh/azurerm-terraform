resource "azurerm_network_interface" "Nic" {
  count               = length(var.Nic_Name)
  name                = element(var.Nic_Name, count.index)
  location            = var.Resources_Location
  resource_group_name = var.Rg_Name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = element(data.azurerm_subnet.subnet.*.id, count.index)
    private_ip_address_allocation = element(var.Private_Ip_Address_Allocation, count.index)
    public_ip_address_id          = element(azurerm_public_ip.publicIP.*.id, count.index)
  }
  tags = merge(var.Resource_Tags)
}