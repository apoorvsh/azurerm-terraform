variable "Rg_Name" {
  type    = string
  default = "onprem-rg"
}

variable "Rg_Location" {
  type    = string
  default = "EastUS"

}

variable "Resource_Tags" {
  type = map(string)
  default = {
    "environment" = "test"
  }

}