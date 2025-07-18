output "login_server" {
  description = "The login server of the Container Registry."
  value       = azurerm_container_registry.this.login_server
}

output "admin_username" {
  description = "The admin username for the Container Registry."
  value       = azurerm_container_registry.this.admin_username
}

output "admin_password" {
  description = "The admin password for the Container Registry."
  value       = azurerm_container_registry.this.admin_password
  sensitive   = true
} 