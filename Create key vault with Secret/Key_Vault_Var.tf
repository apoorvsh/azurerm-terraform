variable "Key_Vault_Name" {
  type    = list(string)
  default = ["apoorv330044", "boss330077"]

}

variable "Enabled_For_Disk_Encryption" {
  type    = list(bool)
  default = [true, true]

}

variable "Soft_Delete_Retention_Days" {
  type    = list(number)
  default = [7, 7]

}

variable "Purge_Protection_Enabled" {
  type    = list(bool)
  default = [false, false]

}

variable "Key_Vault_Sku" {
  type    = list(string)
  default = ["standard", "standard"]

}

