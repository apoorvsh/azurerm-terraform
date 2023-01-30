variable "Key_Vault_Name" {
  type    = string
  default = "apoorv12345123"

}

variable "Enabled_For_Disk_Encryption" {
  type    = bool
  default = true

}

variable "Soft_Delete_Retention_Days" {
  type    = number
  default = 7

}

variable "Purge_Protection_Enabled" {
  type    = bool
  default = false

}

variable "Key_Vault_Sku" {
  type    = string
  default = "standard"

}

variable "Public_Network_Access_Enabled" {
  type    = bool
  default = false

}
