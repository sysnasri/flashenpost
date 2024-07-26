# Create a resource group

resource "azurerm_resource_group" "flashenpost_resource_group" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.tags
}



resource "azurerm_storage_account" "flashenpost_azure_storage" {
  name                     = var.resource_group_name
  resource_group_name      = var.azure_storage_account_name
  location                 = var.location
  account_tier             = var.azure_account_tier
  access_tier              = var.azure_access_tier
  account_replication_type = var.azure_storage_sku[terraform.workspace]

  tags = local.tags
}

resource "azurerm_storage_container" "flashenpost_storage_container" {
  name                  = var.azure_storage_account_container["name"]
  storage_account_name  = var.azure_storage_account_name
  container_access_type = var.azure_storage_account_container["type"]
}
