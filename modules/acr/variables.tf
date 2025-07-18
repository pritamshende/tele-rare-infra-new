variable "name" {
  description = "Name of the Container Registry."
  type        = string
  default     = "teleraacr"
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

variable "sku" {
  description = "SKU for the Container Registry."
  type        = string
  default     = "Standard"
}

variable "admin_enabled" {
  description = "Enable admin user for the registry."
  type        = bool
  default     = false
} 