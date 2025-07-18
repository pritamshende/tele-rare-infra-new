resource "azurerm_servicebus_namespace" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = var.tags
}

resource "azurerm_servicebus_queue" "this" {
  name                = var.queue_name
  namespace_id        = azurerm_servicebus_namespace.this.id
  max_size_in_megabytes = 1024
} 