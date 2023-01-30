variable "Public_IP_Name" {
  type    = list(string)
  default = ["hub-public-ip", "spoke-public-ip"]
}

variable "Allocation_Method" {
  type    = list(string)
  default = ["Dynamic", "Dynamic"]

}

