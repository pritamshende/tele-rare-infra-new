output "private_endpoint_id" {
  description = "The ID of the Private Endpoint."
  value       = azurerm_private_endpoint.this.id
}

output "network_interface_id" {
  description = "The ID of the network interface for the Private Endpoint."
  value       = azurerm_private_endpoint.this.network_interface[0].id
} 