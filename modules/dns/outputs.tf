output "name" {
  description = "The name of the DNS Zone."
  value       = azurerm_dns_zone.this.name
}

output "zone_id" {
  description = "The ID of the DNS Zone."
  value       = azurerm_dns_zone.this.id
} 