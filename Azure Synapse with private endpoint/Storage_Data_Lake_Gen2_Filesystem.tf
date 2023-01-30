resource "azurerm_storage_data_lake_gen2_filesystem" "data-file" {
  name               = "data"
  storage_account_id = data.azurerm_storage_account.existing-storage-account.id
}