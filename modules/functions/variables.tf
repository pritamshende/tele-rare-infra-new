variable "storage_account_name" {
  description = "Name of the Storage Account for the Function App."
  type        = string
  default     = "teleraresa2"
}

variable "plan_name" {
  description = "Name of the App Service Plan for the Function App."
  type        = string
  default     = "tele-rare-func-plan"
}

variable "function_app_name" {
  description = "Name of the Function App."
  type        = string
  default     = "tele-rare-func"
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

variable "runtime_version" {
  description = "Runtime version for the Function App."
  type        = string
  default     = "~4"
}

variable "linux_fx_version" {
  description = "Linux FX version for the Function App (e.g., 'DOTNET|6.0')."
  type        = string
  default     = "DOTNET|6.0"
}

variable "app_settings" {
  description = "App settings as a map."
  type        = map(string)
  default     = {}
} 