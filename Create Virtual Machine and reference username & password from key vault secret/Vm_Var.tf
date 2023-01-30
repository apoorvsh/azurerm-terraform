variable "Vm_Name" {
  type    = string
  default = "onprem-vm"
}

variable "Vm_Size" {
  type    = string
  default = "Standard_F2"
}

variable "Os_Disk_Caching" {
  type    = string
  default = "ReadWrite"

}

variable "Os_Disk_Storage_Account_Type" {
  type    = string
  default = "Standard_LRS"

}

variable "Publisher" {
  type    = string
  default = "MicrosoftWindowsServer"

}

variable "Offer" {
  type    = string
  default = "WindowsServer"

}

variable "Sku" {
  type    = string
  default = "2019-Datacenter"

}

variable "Version" {
  type    = string
  default = "latest"

}