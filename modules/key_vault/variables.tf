variable "name" {
  description = "Name of the Key Vault."
  type        = string
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

variable "tenant_id" {
  description = "Azure AD tenant ID."
  type        = string
}

variable "object_id" {
  description = "Object ID for Managed Identity or user/service principal."
  type        = string
}

variable "sku_name" {
  description = "SKU for the Key Vault."
  type        = string
  default     = "standard"
}

variable "purge_protection_enabled" {
  description = "Enable purge protection."
  type        = bool
  default     = true
} 