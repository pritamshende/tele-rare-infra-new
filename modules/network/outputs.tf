output "vnet_id" {
  description = "The ID of the Virtual Network."
  value       = azurerm_virtual_network.this.id
}

output "app_subnet_id" {
  description = "The ID of the application subnet."
  value       = azurerm_subnet.app.id
}

output "nsg_id" {
  description = "The ID of the Network Security Group."
  value       = azurerm_network_security_group.app.id
} 