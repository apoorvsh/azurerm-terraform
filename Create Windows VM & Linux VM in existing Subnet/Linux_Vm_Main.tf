resource "azurerm_linux_virtual_machine" "linux-vm" {
  name                            = var.linux_Vm_Name
  resource_group_name             = var.Rg_Name
  location                        = var.Resources_Location
  size                            = var.Linux_Vm_Size
  tags                            = var.Resource_Tags
  admin_username                  = var.Vm_Admin_Username
  admin_password                  = var.Vm_Admin_Password
  disable_password_authentication = var.Disable_Password_Authentication
  network_interface_ids = [
    azurerm_network_interface.Nic[1].id,
  ]

  os_disk {
    caching              = var.Linux_Vm_Caching
    storage_account_type = var.Linux_Vm_Storage_Type
  }

  source_image_reference {
    publisher = var.Linux_Vm_Publisher
    offer     = var.Linux_Vm_Offer
    sku       = var.Linux_Vm_Sku
    version   = var.Linux_Vm_Version
  }
}