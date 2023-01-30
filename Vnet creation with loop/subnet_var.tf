variable "subnet_name" {
  type    = list(string)
  default = ["subnetA", "subnetB"]

}

variable "subnet_Address" {
  type    = list(string)
  default = ["10.1.1.0/24", "10.2.1.0/24"]

}