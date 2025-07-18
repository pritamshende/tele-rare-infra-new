variable "plan_name" {
  description = "Name of the App Service Plan."
  type        = string
  default     = "tele-rare-prod-app-plan"
}

variable "app_name" {
  description = "Name of the App Service."
  type        = string
  default     = "tele-rare-prod-app"
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "East US"
}

variable "sku_tier" {
  description = "App Service Plan SKU tier."
  type        = string
  default     = "Standard"
}

variable "sku_size" {
  description = "App Service Plan SKU size."
  type        = string
  default     = "S1"
}

variable "linux_fx_version" {
  description = "Runtime stack for Linux (e.g., 'JAVA|11-java11')."
  type        = string
  default     = "JAVA|11-java11"
}

variable "app_settings" {
  description = "App settings as a map."
  type        = map(string)
  default     = {}
} 