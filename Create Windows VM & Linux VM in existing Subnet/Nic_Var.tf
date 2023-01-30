variable "Nic_Name" {
  type    = list(string)
  default = ["window-nic", "linux-nic"]

}

variable "Private_Ip_Address_Allocation" {
  type    = list(string)
  default = ["Dynamic", "Dynamic"]

}