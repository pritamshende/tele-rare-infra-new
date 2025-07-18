# Azure CDN Module
# Provisions a CDN Profile and Endpoint for content delivery.

resource "azurerm_cdn_profile" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
}

resource "azurerm_cdn_endpoint" "this" {
  name                = var.endpoint_name
  profile_name        = azurerm_cdn_profile.this.name
  resource_group_name = var.resource_group_name
  location            = var.location
  origin_host_header  = var.origin_host_header
  origin {
    name      = var.origin_name
    host_name = var.origin_host_name
  }
} 