data "azurerm_storage_account" "existing-storage-account" {
  name                = "apoorv3300storage"
  resource_group_name = data.azurerm_resource_group.existing-rg.name
}

output "storage_account_id" {
  value = data.azurerm_storage_account.existing-storage-account.id

}