resource "azurerm_resource_group" "RG" {
  name     = var.Rg_Name
  location = var.Rg_Location
  tags = merge(var.Resource_Tags)
}