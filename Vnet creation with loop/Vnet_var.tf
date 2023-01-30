variable "vnet_name" {
  type    = list(string)
  default = ["vnetA", "vnetB"]
}

variable "vnet_address" {
  type    = list(string)
  default = ["10.1.0.0/16", "10.2.0.0/16"]

}