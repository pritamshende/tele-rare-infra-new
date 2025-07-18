variable "name" {
  description = "Name of the Static Web App."
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

variable "sku_name" {
  description = "SKU for the Static Web App."
  type        = string
  default     = "Standard"
}

variable "repository_url" {
  description = "GitHub repository URL for CI/CD."
  type        = string
}

variable "branch" {
  description = "Branch to deploy from."
  type        = string
  default     = "main"
}

variable "app_location" {
  description = "Path to the app code."
  type        = string
  default     = "/"
}

variable "api_location" {
  description = "Path to the API code."
  type        = string
  default     = "api"
}

variable "output_location" {
  description = "Build output directory."
  type        = string
  default     = "build"
} 