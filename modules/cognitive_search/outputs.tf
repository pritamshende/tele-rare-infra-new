output "name" {
  description = "The name of the Cognitive Search service."
  value       = azurerm_search_service.this.name
}

output "endpoint" {
  description = "The endpoint of the Cognitive Search service."
  value       = azurerm_search_service.this.query_keys[0].key
} 