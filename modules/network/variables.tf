variable "vnet_name" {
  description = "Name of the Virtual Network."
  type        = string
  default     = "tele-rare-prod-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the VNet."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "app_subnet_name" {
  description = "Name of the application subnet."
  type        = string
  default     = "app-subnet"
}

variable "app_subnet_prefixes" {
  description = "Address prefixes for the application subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  description = "Name of the Network Security Group."
  type        = string
  default     = "tele-rare-prod-nsg"
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
} 