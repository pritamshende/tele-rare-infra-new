variable "name" {
  description = "The name of the Service Bus namespace."
  type        = string
}

variable "location" {
  description = "The Azure location for the Service Bus namespace."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "sku" {
  description = "The SKU for the Service Bus namespace (Basic, Standard, Premium)."
  type        = string
  default     = "Standard"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "queue_name" {
  description = "The name of the Service Bus queue."
  type        = string
} 