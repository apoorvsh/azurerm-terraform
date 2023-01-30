variable "linux_Vm_Name" {
  type    = string
  default = "linux-vm"

}

variable "Linux_Vm_Size" {
  type    = string
  default = "Standard_F2"

}

variable "Linux_Vm_Caching" {
  type    = string
  default = "ReadWrite"

}

variable "Linux_Vm_Storage_Type" {
  type    = string
  default = "Standard_LRS"

}

variable "Linux_Vm_Publisher" {
  type    = string
  default = "Canonical"

}

variable "Linux_Vm_Offer" {
  type    = string
  default = "UbuntuServer"

}

variable "Linux_Vm_Sku" {
  type    = string
  default = "16.04-LTS"

}

variable "Linux_Vm_Version" {
  type    = string
  default = "latest"

}

variable "Disable_Password_Authentication" {
  type    = bool
  default = false

}