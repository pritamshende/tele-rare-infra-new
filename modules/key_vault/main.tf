# Azure Key Vault Module
# Provisions a Key Vault and allows access for Managed Identities.

resource "azurerm_key_vault" "this" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  purge_protection_enabled    = var.purge_protection_enabled
  enabled_for_disk_encryption = true
  enabled_for_deployment      = true
  enabled_for_template_deployment = true

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id
    secret_permissions = ["get", "list", "set", "delete"]
    key_permissions    = ["get", "list", "create", "delete"]
    certificate_permissions = ["get", "list", "create", "delete"]
  }
} 