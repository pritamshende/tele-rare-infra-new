# Azure Private Endpoint Module
# Provisions a Private Endpoint for secure access to Azure services.

resource "azurerm_private_endpoint" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.name}-connection"
    private_connection_resource_id  = var.target_resource_id
    subresource_names               = var.subresource_names
    is_manual_connection            = false
  }
} 