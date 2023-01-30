variable "Vm_Name" {
  type    = list(string)
  default = ["hub-vm", "spoke-vm"]
}

variable "Vm_Size" {
  type    = list(string)
  default = ["Standard_F2", "Standard_F2"]
}

variable "Vm_Admin_Username" {
  type    = list(string)
  default = ["testuser", "testuser"]

}

variable "Vm_Admin_Password" {
  type    = list(string)
  default = ["Password@123", "Password@123"]

}

variable "Os_Disk_Caching" {
  type    = list(string)
  default = ["ReadWrite", "ReadWrite"]

}

variable "Os_Disk_Storage_Account_Type" {
  type    = list(string)
  default = ["Standard_LRS", "Standard_LRS"]

}

variable "Publisher" {
  type    = list(string)
  default = ["MicrosoftWindowsServer", "MicrosoftWindowsServer"]

}

variable "Offer" {
  type    = list(string)
  default = ["WindowsServer", "WindowsServer"]

}

variable "Sku" {
  type    = list(string)
  default = ["2019-Datacenter", "2019-Datacenter"]

}

variable "Version" {
  type    = list(string)
  default = ["latest", "latest"]

}