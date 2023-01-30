resource "azurerm_storage_container" "blob" {
  count                 = length(var.Container_Name)
  name                  = element(var.Container_Name, count.index)
  storage_account_name  = azurerm_storage_account.storage-account.name
  container_access_type = element(var.Container_Access_Type, count.index)

}