output "name" {
  description = "The name of the Static Web App."
  value       = azurerm_static_site.this.name
}

output "default_host_name" {
  description = "The default host name of the static web app."
  value       = azurerm_static_site.this.default_host_name
} 