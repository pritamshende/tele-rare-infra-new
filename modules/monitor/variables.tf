variable "law_name" {
  description = "Name of the Log Analytics Workspace."
  type        = string
  default     = "tele-rare-law"
}

variable "law_sku" {
  description = "SKU for the Log Analytics Workspace."
  type        = string
  default     = "PerGB2018"
}

variable "retention_in_days" {
  description = "Retention period for logs in days."
  type        = number
  default     = 30
}

variable "appi_name" {
  description = "Name of the Application Insights instance."
  type        = string
  default     = "tele-rare-appi"
}

variable "application_type" {
  description = "Type of application for Application Insights."
  type        = string
  default     = "web"
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