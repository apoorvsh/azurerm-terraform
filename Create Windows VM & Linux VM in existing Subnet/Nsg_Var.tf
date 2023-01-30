variable "Nsg_Name" {
  type    = list(string)
  default = ["window-nsg", "linux-nsg"]

}
variable "Security_Rule_Name" {
  type    = list(string)
  default = ["RDP", "SSH"]

}

variable "Priority" {
  type    = list(number)
  default = [500, 500]

}

variable "Direction" {
  type    = list(string)
  default = ["Inbound", "Inbound"]

}

variable "Access" {
  type    = list(string)
  default = ["Allow", "Deny"]

}

variable "Protocol" {
  type    = list(string)
  default = ["Tcp", "Tcp"]

}

variable "Source_Port_Range" {
  type    = list(string)
  default = ["*", "*"]

}

variable "Destination_Port_Range" {
  type    = list(string)
  default = ["3389", "22"]
}

variable "Source_Address_Prefix" {
  type    = list(string)
  default = ["*", "*"]
}

variable "Destination_Address_Prefix" {
  type    = list(string)
  default = ["*", "*"]
}


