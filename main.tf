# Root main.tf for Tele-Rare Production Infrastructure
# Wires together all modules for a full Azure deployment

provider "azurerm" {
  features {}
}

# Resource Group
module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

# Networking
module "network" {
  source              = "./modules/network"
  vnet_name           = "tele-rare-prod-vnet"
  vnet_address_space  = ["10.0.0.0/16"]
  app_subnet_name     = "app-subnet"
  app_subnet_prefixes = ["10.0.1.0/24"]
  nsg_name            = "tele-rare-prod-nsg"
  location            = var.location
  resource_group_name = module.resource_group.name
}

# Static Web App
module "static_web_app" {
  source              = "./modules/static_web_app"
  name                = "tele-rare-staticweb"
  resource_group_name = module.resource_group.name
  location            = var.location
  repository_url      = "https://github.com/your-org/your-repo"
  branch              = "main"
  app_location        = "/"
  api_location        = "api"
  output_location     = "build"
}

# App Service
module "app_service" {
  source              = "./modules/app_service"
  plan_name           = "tele-rare-prod-app-plan"
  app_name            = "tele-rare-prod-app"
  resource_group_name = module.resource_group.name
  location            = var.location
  sku_tier            = "Standard"
  sku_size            = "S1"
  linux_fx_version    = "JAVA|11-java11"
  app_settings        = {}
}

# Key Vault
module "key_vault" {
  source              = "./modules/key_vault"
  name                = "tele-rare-prod-kv"
  resource_group_name = module.resource_group.name
  location            = var.location
  tenant_id           = "11111111-1111-1111-1111-111111111111"
  object_id           = "22222222-2222-2222-2222-222222222222"
  sku_name            = "standard"
  purge_protection_enabled = true
}

# PostgreSQL Flexible Server
module "postgresql" {
  source                        = "./modules/postgresql"
  name                          = "tele-rare-prod-pg"
  resource_group_name           = module.resource_group.name
  location                      = var.location
  admin_username                = "pgadmin"
  admin_password                = "<secure-password>"
  #sku_name                      = "Standard_B1ms"
  storage_mb                    = 32768
  zone                          = "1"
  backup_retention_days         = 7
  geo_redundant_backup_enabled  = false
  high_availability             = "Disabled"
  # delegated_subnet_id is omitted since VNet integration is not used
}

# Service Bus
module "service_bus" {
  source              = "./modules/service_bus"
  name                = "tele-rare-prod-sbus1"
  queue_name          = "tele-rare-prod-queue"
  resource_group_name = module.resource_group.name
  location            = var.location
  sku                 = "Standard"
  # max_size_in_megabytes and enable_partitioning removed
}

# Redis
module "redis" {
  source              = "./modules/redis"
  name                = "tele-rare-prod-redis"
  resource_group_name = module.resource_group.name
  location            = var.location
  capacity            = 1
  family              = "C"
  sku_name            = "Standard"
}

# Blob Storage
module "blob_storage" {
  source                  = "./modules/blob_storage"
  storage_account_name    = "teleraresa"
  resource_group_name     = module.resource_group.name
  location                = var.location
  account_tier            = "Standard"
  account_replication_type = "LRS"
  container_name          = "files"
  container_access_type   = "private"
}

# Cognitive Search
module "cognitive_search" {
  source              = "./modules/cognitive_search"
  name                = "tele-rare-search"
  resource_group_name = module.resource_group.name
  location            = var.location
  sku                 = "basic"
  partition_count     = 1
  replica_count       = 1
}
# Functions
module "functions" {
  source                = "./modules/functions"
  storage_account_name  = "teleraresa2"
  plan_name             = "tele-rare-func-plan"
  function_app_name     = "tele-rare-func"
  resource_group_name   = module.resource_group.name
  location              = var.location
  runtime_version       = "~4"
  linux_fx_version      = "DOTNET|6.0"
  app_settings          = {}
}

# Front Door
module "front_door" {
  source              = "./modules/front_door"
  name                = "tele-rare-frontdoor"
  resource_group_name = module.resource_group.name
  sku_name            = "Standard_AzureFrontDoor"
  endpoint_name       = "tele-rare-endpoint"
}

# CDN
module "cdn" {
  source              = "./modules/cdn"
  name                = "tele-rare-cdn"
  resource_group_name = module.resource_group.name
  location            = var.location
  sku                 = "Standard_Microsoft"
  endpoint_name       = "tele-rare-cdn-endpoint"
  origin_name         = "staticweb"
  origin_host_name    = module.static_web_app.default_host_name
  origin_host_header  = module.static_web_app.default_host_name
}

# Application Gateway
module "app_gateway" {
  source              = "./modules/app_gateway"
  name                = "tele-rare-appgw"
  resource_group_name = module.resource_group.name
  location            = var.location
  sku_name            = "WAF_v2"
  sku_tier            = "WAF_v2"
  capacity            = 2
  subnet_id           = module.network.app_subnet_id
  frontend_port       = 80
  backend_fqdns       = [module.app_service.default_hostname]
  backend_port        = 80
}

# DNS
module "dns" {
  source              = "./modules/dns"
  name                = "example.com"
  resource_group_name = module.resource_group.name
}

# AD B2C
module "ad_b2c" {
  source       = "./modules/ad_b2c"
  domain_name  = "exampleb2c.onmicrosoft.com"
  country_code = "US"
  display_name = "Tele-Rare B2C"
}

# Monitor
module "monitor" {
  source              = "./modules/monitor"
  law_name            = "tele-rare-law"
  law_sku             = "PerGB2018"
  retention_in_days   = 30
  appi_name           = "tele-rare-appi"
  application_type    = "web"
  resource_group_name = module.resource_group.name
  location            = var.location
}

# Backup
module "backup" {
  source              = "./modules/backup"
  name                = "tele-rare-backup"
  resource_group_name = module.resource_group.name
  location            = var.location
  sku                 = "Standard"
}