variable "resource_group_name" {
  description = "The name of the resource group for all resources."
  type        = string
  default     = "tele-rare-prod-rg"
}

variable "location" {
  description = "The Azure region for all resources."
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "The deployment environment (e.g., prod, dev, staging)."
  type        = string
  default     = "prod"
} 