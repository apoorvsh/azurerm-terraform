variable "Storage_Account_Name" {
  type    = string
  default = "apoorv3344store"

}

variable "Access_Tier" {
  type    = string
  default = "Standard"

}

variable "Account_Replication_Type" {
  type    = string
  default = "LRS"

}

/*variable "Public_Access" {
  type    = bool
  default = false

}*/

variable "Hns_Enabled" {
  type    = bool
  default = true

}