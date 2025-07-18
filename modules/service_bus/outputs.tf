output "servicebus_namespace_name" {
  description = "The name of the Service Bus namespace."
  value       = azurerm_servicebus_namespace.this.name
}

output "servicebus_namespace_id" {
  description = "The ID of the Service Bus namespace."
  value       = azurerm_servicebus_namespace.this.id
}

output "servicebus_queue_name" {
  description = "The name of the Service Bus queue."
  value       = azurerm_servicebus_queue.this.name
} 