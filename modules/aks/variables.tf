variable "name" {
  description = "Name of the AKS cluster."
  type        = string
  default     = "tele-rare-aks"
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

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
  default     = "teleraaks"
}

variable "node_count" {
  description = "Number of nodes in the default node pool."
  type        = number
  default     = 3
}

variable "vm_size" {
  description = "VM size for the nodes."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "subnet_id" {
  description = "Subnet ID for AKS node pool."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID for monitoring."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "prod"
} 