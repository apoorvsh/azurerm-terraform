resource "azurerm_resource_group" "Rg" {
  count    = length(var.Rg_name)
  name     = element(var.Rg_name, count.index)
  location = element(var.Rg_location, count.index)
}