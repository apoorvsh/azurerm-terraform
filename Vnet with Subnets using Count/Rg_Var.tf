variable "Rg_Name" {
  type    = list(string)
  default = ["Rg1", "Rg2"]

}

variable "Rg_Location" {
  type    = list(string)
  default = ["EastUS", "WestUS"]
}

variable "Resource_Tags" {
  type = map(string)
  default = {
    "environment" = "test"
  }

}