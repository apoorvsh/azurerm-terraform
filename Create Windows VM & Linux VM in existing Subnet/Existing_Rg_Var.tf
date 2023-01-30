variable "Rg_Name" {
  type    = string
  default = "aporv-rg"
}

variable "Resource_Tags" {
  type = map(string)
  default = {
    "environment" = "test"
  }
}

variable "Resources_Location" {
  type    = string
  default = "East US"

}