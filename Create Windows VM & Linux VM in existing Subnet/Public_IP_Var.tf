variable "Public_IP_Name" {
  type    = list(string)
  default = ["window-public-ip", "linux-public-ip"]
}

variable "Allocation_Method" {
  type    = list(string)
  default = ["Dynamic", "Dynamic"]

}

