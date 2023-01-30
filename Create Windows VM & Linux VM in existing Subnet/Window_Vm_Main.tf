resource "azurerm_windows_virtual_machine" "window-vm" {
  name                = var.Vm_Name
  resource_group_name = var.Rg_Name
  location            = var.Resources_Location
  tags                = merge(var.Resource_Tags)
  size                = var.Vm_Size
  admin_username      = var.Vm_Admin_Username
  admin_password      = var.Vm_Admin_Password
  network_interface_ids = [
    azurerm_network_interface.Nic[0].id,
  ]

  os_disk {
    caching              = var.Os_Disk_Caching
    storage_account_type = var.Os_Disk_Storage_Account_Type
  }

  source_image_reference {
    publisher = var.Publisher
    offer     = var.Offer
    sku       = var.Sku
    version   = var.Version
  }
}