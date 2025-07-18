output "app_name" {
  description = "The name of the App Service."
  value       = azurerm_app_service.this.name
}

output "default_hostname" {
  description = "The default hostname of the App Service."
  value       = azurerm_app_service.this.default_site_hostname
}

output "app_service_plan_id" {
  description = "The ID of the App Service Plan."
  value       = azurerm_app_service_plan.this.id
} 