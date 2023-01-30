resource "azurerm_private_dns_zone" "key-vault-dns-zone" {
  name                = var.Private_Dns_Zone_Name
  resource_group_name = azurerm_resource_group.RG.name
}