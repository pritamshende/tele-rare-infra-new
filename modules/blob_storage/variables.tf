variable "storage_account_name" {
  description = "Name of the Storage Account."
  type        = string
  default     = "teleraresa"
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

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "Name of the Blob Container."
  type        = string
  default     = "files"
}

variable "container_access_type" {
  description = "Access type for the container."
  type        = string
  default     = "private"
} 