variable "name" {
  description = "Name of the Recovery Services Vault."
  type        = string
  default     = "tele-rare-backup"
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
  description = "SKU for the Recovery Services Vault."
  type        = string
  default     = "Standard"
} 