output "profile_name" {
  description = "The name of the CDN profile."
  value       = azurerm_cdn_profile.this.name
}

output "endpoint_host_name" {
  description = "The host name of the CDN endpoint."
  value       = azurerm_cdn_endpoint.this.host_name
} 