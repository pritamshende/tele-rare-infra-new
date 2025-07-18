output "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.this.id
}

output "appi_instrumentation_key" {
  description = "The instrumentation key for Application Insights."
  value       = azurerm_application_insights.this.instrumentation_key
} 