data "azurerm_client_config" "terraform" {
}

output "tenant_id" {
  value = data.azurerm_client_config.terraform.tenant_id
}

output "object_id" {
  value = data.azurerm_client_config.terraform.object_id
}