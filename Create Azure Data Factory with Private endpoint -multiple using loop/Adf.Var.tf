variable "Adf_Name" {
  type    = list(string)
  default = ["apoorv-data-fac", "onprem-data-fac"]

}

variable "Public_Network_Enabled" {
  type    = list(bool)
  default = [false, false]
}