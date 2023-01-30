variable "Nsg_Name" {
  type    = string
  default = "Nsg-1"

}
variable "Security_Rule_Name" {
  type    = string
  default = "RDP"

}

variable "Priority" {
  type    = number
  default = 500

}

variable "Direction" {
  type    = string
  default = "Inbound"

}

variable "Access" {
  type    = string
  default = "Allow"

}

variable "Protocol" {
  type    = string
  default = "Tcp"

}

variable "Source_Port_Range" {
  type    = string
  default = "*"

}

variable "Destination_Port_Range" {
  type    = string
  default = "3389"
}

variable "Source_Address_Prefix" {
  type    = string
  default = "*"
}

variable "Destination_Address_Prefix" {
  type    = string
  default = "*"

}