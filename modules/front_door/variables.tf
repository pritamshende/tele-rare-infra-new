variable "name" {
  description = "Name of the Front Door profile."
  type        = string
  default     = "tele-rare-frontdoor"
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}

variable "sku_name" {
  description = "SKU for Front Door (Standard_AzureFrontDoor or Premium_AzureFrontDoor)."
  type        = string
  default     = "Standard_AzureFrontDoor"
}

variable "endpoint_name" {
  description = "Name of the Front Door endpoint."
  type        = string
  default     = "tele-rare-endpoint"
} 