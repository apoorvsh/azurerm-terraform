data "azurerm_key_vault" "existing-key-vault" {
  name                = "apoorvkey3344"
  resource_group_name = data.azurerm_resource_group.existing-rg.name
}