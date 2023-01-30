resource "azurerm_private_dns_zone" "storage-account-dns-zone" {
  count               = length(var.Private_Dns_Zone_Name)
  name                = element(var.Private_Dns_Zone_Name, count.index)
  resource_group_name = azurerm_resource_group.RG.name
  tags                = merge(var.Resource_Tags)
}