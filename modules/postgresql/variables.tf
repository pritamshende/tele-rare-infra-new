variable "name" {
  description = "Name of the PostgreSQL Flexible Server."
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

variable "admin_username" {
  description = "Administrator username."
  type        = string
  default     = "pgadmin"
}

variable "admin_password" {
  description = "Administrator password."
  type        = string
  sensitive   = true
}

variable "sku_name" {
  description = "SKU name (e.g., Standard_B1ms)."
  type        = string
  default     = "Standard_B1ms"
}

variable "storage_mb" {
  description = "Storage in MB."
  type        = number
  default     = 32768
}

variable "zone" {
  description = "Availability zone."
  type        = string
  default     = "1"
}

variable "backup_retention_days" {
  description = "Backup retention in days."
  type        = number
  default     = 7
}

variable "geo_redundant_backup_enabled" {
  description = "Enable geo-redundant backup."
  type        = bool
  default     = false
}

variable "high_availability" {
  description = "High availability mode (e.g., 'ZoneRedundant')."
  type        = string
  default     = "Disabled"
}

variable "delegated_subnet_id" {
  description = "Delegated subnet ID for VNet integration."
  type        = string
  default     = ""
}

variable "pg_version" {
  description = "The PostgreSQL version."
  type        = string
  default     = "13"
} 