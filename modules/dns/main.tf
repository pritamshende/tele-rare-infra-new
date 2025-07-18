# Azure DNS Module
# Provisions a DNS Zone for domain management.

resource "azurerm_dns_zone" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
} 