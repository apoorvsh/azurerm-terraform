variable "Private_Dns_Zone_Name" {
  type = list(string)
  default = ["privatelink.blob.core.windows.net", "privatelink.table.core.windows.net",
  "privatelink.queue.core.windows.net", "privatelink.file.core.windows.net", "privatelink.dfs.core.windows.net"]
}