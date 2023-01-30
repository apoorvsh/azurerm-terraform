resource "azurerm_windows_virtual_machine" "Vm" {
  count               = length(var.Vm_Name)
  name                = element(var.Vm_Name, count.index)
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  tags                = merge(var.Resource_Tags)
  size                = element(var.Vm_Size, count.index)
  admin_username      = element(var.Vm_Admin_Username, count.index)
  admin_password      = element(var.Vm_Admin_Password, count.index)
  network_interface_ids = [
    element(azurerm_network_interface.Nic.*.id, count.index)
  ]

  os_disk {
    caching              = element(var.Os_Disk_Caching, count.index)
    storage_account_type = element(var.Os_Disk_Storage_Account_Type, count.index)
  }

  source_image_reference {
    publisher = element(var.Publisher, count.index)
    offer     = element(var.Offer, count.index)
    sku       = element(var.Sku, count.index)
    version   = element(var.Version, count.index)
  }
}