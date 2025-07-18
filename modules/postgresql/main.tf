# Azure PostgreSQL Flexible Server Module
# Provisions a managed PostgreSQL server for production workloads.

resource "azurerm_postgresql_flexible_server" "this" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  #sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  version                = var.pg_version
  zone                   = var.zone
  backup_retention_days  = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  delegated_subnet_id    = var.delegated_subnet_id != null && var.delegated_subnet_id != "" ? var.delegated_subnet_id : null
} 