# Azure Front Door Module
# Provisions an Azure Front Door for global load balancing and CDN.

# Requires azurerm provider >= 3.0.0
# resource "azurerm_cdn_frontdoor_profile" "this" {
#   name                = var.name
#   resource_group_name = var.resource_group_name
#   sku_name            = var.sku_name
# }

# resource "azurerm_cdn_frontdoor_endpoint" "this" {
#   name                    = var.endpoint_name
#   cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.this.id
# } 