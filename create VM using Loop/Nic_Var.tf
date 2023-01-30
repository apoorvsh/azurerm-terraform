variable "Nic_Name" {
  type    = list(string)
  default = ["huv-vm-nic", "spoke-vm-nic"]

}

variable "Private_Ip_Address_Allocation" {
  type    = list(string)
  default = ["Dynamic", "Dynamic"]

}