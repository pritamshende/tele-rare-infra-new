# Azure Backup Module
# Provisions a Recovery Services Vault for backup and restore.

resource "azurerm_recovery_services_vault" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
} 