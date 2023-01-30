variable "Container_Name" {
  type    = list(string)
  default = ["data", "image"]

}

variable "Container_Access_Type" {
  type    = list(string)
  default = ["private", "container"]

}