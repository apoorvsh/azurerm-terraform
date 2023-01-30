variable "Vnet_Name" {
  type    = list(string)
  default = ["Vnet-1", "Vnet-2"]

}

variable "Vnet_Address" {
  type    = list(string)
  default = ["10.1.0.0/16", "10.2.0.0/16"]

}

variable "Vnet_B_Name" {
  type    = list(string)
  default = ["Vnet-3"]

}

variable "Vnet_B_Address" {
  type    = list(string)
  default = ["10.3.0.0/16"]

}