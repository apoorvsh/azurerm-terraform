variable "Rg_Name" {
 type = string
 default = "apoorv-rg"
}

variable "Rg_Location" {
    type = string
    default = "EastUS"
  
}

variable "Resource_Tags" {
    type = map(string)
    default = {
      "environment" = "test"
    }
  
}