output "function_app_name" {
  description = "The name of the Function App."
  value       = azurerm_function_app.this.name
}

output "default_hostname" {
  description = "The default hostname of the Function App."
  value       = azurerm_function_app.this.default_hostname
} 