output "storage_account_name" {
  description = "The name of the Storage Account."
  value       = azurerm_storage_account.this.name
}

output "container_name" {
  description = "The name of the Blob Container."
  value       = azurerm_storage_container.this.name
} 