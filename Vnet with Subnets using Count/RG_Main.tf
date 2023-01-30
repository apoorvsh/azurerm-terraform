resource "azurerm_resource_group" "RG" {
  count    = length(var.Rg_Name)
  name     = element(var.Rg_Name, count.index)
  location = element(var.Rg_Location, count.index)
  tags     = merge(var.Resource_Tags)
}