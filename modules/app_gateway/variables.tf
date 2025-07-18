variable "name" {
  description = "Name of the Application Gateway."
  type        = string
  default     = "tele-rare-appgw"
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

variable "sku_name" {
  description = "SKU name for the Application Gateway."
  type        = string
  default     = "WAF_v2"
}

variable "sku_tier" {
  description = "SKU tier for the Application Gateway."
  type        = string
  default     = "WAF_v2"
}

variable "capacity" {
  description = "Instance count for the Application Gateway."
  type        = number
  default     = 2
}

variable "subnet_id" {
  description = "Subnet ID for the Application Gateway."
  type        = string
}

variable "frontend_port" {
  description = "Frontend port for the Application Gateway."
  type        = number
  default     = 80
}

variable "backend_fqdns" {
  description = "List of backend FQDNs."
  type        = list(string)
  default     = []
}

variable "backend_port" {
  description = "Backend port for the Application Gateway."
  type        = number
  default     = 80
} 