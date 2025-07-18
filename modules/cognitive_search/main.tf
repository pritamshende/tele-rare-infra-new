# Azure Cognitive Search Module
# Provisions an Azure Cognitive Search service for advanced search capabilities.

resource "azurerm_search_service" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  partition_count     = var.partition_count
  replica_count       = var.replica_count
} 