variable "Private_Endpoint_Name" {
  type    = list(string)
  default = ["apoorv-adf-private-endpoint", "onprem-adf-private-endpoint"]

}

variable "Adf_Target_Sub_Resource" {
  type    = list(string)
  default = ["datafactory", "datafactory"]

}