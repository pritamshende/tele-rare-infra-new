# Azure Monitoring Module
# Provisions Log Analytics Workspace and Application Insights for monitoring and logging.

resource "azurerm_log_analytics_workspace" "this" {
  name                = var.law_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.law_sku
  retention_in_days   = var.retention_in_days
}

resource "azurerm_application_insights" "this" {
  name                = var.appi_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type
  workspace_id        = azurerm_log_analytics_workspace.this.id
} 