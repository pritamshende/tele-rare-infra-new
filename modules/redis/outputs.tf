output "hostname" {
  description = "The hostname of the Redis Cache."
  value       = azurerm_redis_cache.this.hostname
}

output "primary_access_key" {
  description = "The primary access key for the Redis Cache."
  value       = azurerm_redis_cache.this.primary_access_key
  sensitive   = true
} 