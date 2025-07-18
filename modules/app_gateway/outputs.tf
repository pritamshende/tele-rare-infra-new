output "name" {
  description = "The name of the Application Gateway."
  value       = azurerm_application_gateway.this.name
}

output "frontend_ip_configuration" {
  description = "The frontend IP configuration of the Application Gateway."
  value       = azurerm_application_gateway.this.frontend_ip_configuration[0]
} 