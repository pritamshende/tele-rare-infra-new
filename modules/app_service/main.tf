# Azure App Service Module
# Provisions an App Service Plan and a Web App for backend hosting.

resource "azurerm_app_service_plan" "this" {
  name                = var.plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Linux"
  reserved            = true
  sku {
    tier = var.sku_tier
    size = var.sku_size
  }
}

resource "azurerm_app_service" "this" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.this.id
  site_config {
    linux_fx_version = var.linux_fx_version
  }
  app_settings = var.app_settings
} 