variable "Key_Vault_Secrets_Name" {
  type    = list(string)
  default = ["window-vm-user-name", "linux-vm-user-name"]

}

variable "Key_Vault_Value" {
  type    = list(string)
  default = ["testuser", "testuser"]

}

variable "Password_Secrets_Name" {
  type    = list(string)
  default = ["window-vm-password", "linux-vm-password"]

}

variable "Password_Secrets_Value" {
  type    = list(string)
  default = ["Password@123", "Password@123"]
}