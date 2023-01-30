variable "Rg_name" {
  type    = list(string)
  default = ["apoorv_rg", "onprem_rg"]

}

variable "Rg_location" {
  type    = list(string)
  default = ["eastus", "westus"]

}