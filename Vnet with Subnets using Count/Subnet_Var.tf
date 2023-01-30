variable "Subnet_Name" {
  type    = list(string)
  default = ["Subnet-A", "Subnet-B"]

}

variable "Subnet_Address" {
  type    = list(string)
  default = ["10.1.1.0/24", "10.1.2.0/24"]

}

variable "Subnet_B_Name" {
  type    = list(string)
  default = ["Subnet-C"]

}

variable "Subnet_B_Address" {
  type    = list(string)
  default = ["10.2.1.0/24"]

}

variable "Subnet_C_Name" {
  type    = list(string)
  default = ["Subnet-D"]

}

variable "Subnet_C_Address" {
  type    = list(string)
  default = ["10.3.1.0/24"]

}