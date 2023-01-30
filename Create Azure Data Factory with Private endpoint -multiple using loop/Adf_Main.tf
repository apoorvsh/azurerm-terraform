resource "azurerm_data_factory" "adf" {
  count                  = length(var.Adf_Name)
  name                   = element(var.Adf_Name, count.index)
  location               = azurerm_resource_group.RG.location
  resource_group_name    = azurerm_resource_group.RG.name
  tags                   = merge(var.Resource_Tags)
  public_network_enabled = element(var.Public_Network_Enabled, count.index)
}