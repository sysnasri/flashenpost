output "azure_store_account_id" {
  value = azurerm_storage_account.flashenpost_azure_storage.id
}

output "azure_storage_account_acccess_key" {
  value     = azurerm_storage_account.flashenpost_azure_storage.primary_access_key
  sensitive = true

}

output "azure_storage_connection_string" {
  value     = azurerm_storage_account.flashenpost_azure_storage.primary_connection_string
  sensitive = true

}

output "azure_container_id" {
  value = azurerm_storage_container.flashenpost_storage_container.id
}
