variable "name" {
  description = "Name of the CDN profile."
  type        = string
  default     = "tele-rare-cdn"
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
  description = "SKU for the CDN profile."
  type        = string
  default     = "Standard_Microsoft"
}

variable "endpoint_name" {
  description = "Name of the CDN endpoint."
  type        = string
  default     = "tele-rare-cdn-endpoint"
}

variable "origin_name" {
  description = "Name of the CDN origin."
  type        = string
  default     = "staticweb"
}

variable "origin_host_name" {
  description = "Host name of the CDN origin."
  type        = string
  default     = "example.azurestaticapps.net"
}

variable "origin_host_header" {
  description = "Host header for the CDN origin."
  type        = string
  default     = "example.azurestaticapps.net"
} 