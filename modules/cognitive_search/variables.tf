variable "name" {
  description = "Name of the Cognitive Search service."
  type        = string
  default     = "tele-rare-search"
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
  description = "SKU for the Cognitive Search service."
  type        = string
  default     = "basic"
}

variable "partition_count" {
  description = "Number of partitions."
  type        = number
  default     = 1
}

variable "replica_count" {
  description = "Number of replicas."
  type        = number
  default     = 1
} 