variable "name" {
  description = "Name of the Redis Cache instance."
  type        = string
  default     = "tele-rare-prod-redis"
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

variable "capacity" {
  description = "The size of the Redis cache to deploy."
  type        = number
  default     = 1
}

variable "family" {
  description = "The family of the SKU to use."
  type        = string
  default     = "C"
}

variable "sku_name" {
  description = "The SKU of Redis to use."
  type        = string
  default     = "Standard"
} 