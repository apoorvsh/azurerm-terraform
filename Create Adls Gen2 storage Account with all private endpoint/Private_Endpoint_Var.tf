variable "Private_Endpoint_Name" {
  type    = list(string)
  default = ["blob-private-endpoint", "table-private-endpoint", "queue-private-endpoint", "file-private-endpoint", "dfs-private-endpoint"]

}

variable "Storage_Target_Sub_Resource" {
  type    = list(string)
  default = ["blob", "table", "queue", "file", "dfs"]

}

variable "Is_Manual_Connection" {
  type    = list(bool)
  default = [false, false, false, false]

}