# Azure Application Gateway Module
# Provisions an Application Gateway with WAF for web security.

resource "azurerm_application_gateway" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.capacity
  }
  gateway_ip_configuration {
    name      = "appGatewayIpConfig"
    subnet_id = var.subnet_id
  }
  frontend_port {
    name = "frontendPort"
    port = var.frontend_port
  }
  frontend_ip_configuration {
    name                 = "frontendIpConfig"
    subnet_id            = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
  backend_address_pool {
    name  = "backendPool"
    fqdns = var.backend_fqdns
  }
  backend_http_settings {
    name                  = "httpSettings"
    port                  = var.backend_port
    protocol              = "Http"
    cookie_based_affinity = "Disabled"
  }
  waf_configuration {
    enabled          = true
    firewall_mode    = "Prevention"
    rule_set_type    = "OWASP"
    rule_set_version = "3.2"
  }

  http_listener {
    name                           = "appGatewayListener"
    frontend_ip_configuration_name = "frontendIpConfig"
    frontend_port_name             = "frontendPort"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "rule1"
    rule_type                  = "Basic"
    http_listener_name         = "appGatewayListener"
    backend_address_pool_name  = "backendPool"
    backend_http_settings_name = "httpSettings"
  }
} 