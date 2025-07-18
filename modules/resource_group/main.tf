# Resource Group Module for Tele-Rare Production
# This module provisions an Azure Resource Group for the environment.

resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
} 