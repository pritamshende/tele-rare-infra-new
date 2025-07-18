variable "name" {
  description = "Name of the Private Endpoint."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the Private Endpoint."
  type        = string
}

variable "target_resource_id" {
  description = "The resource ID of the target service (e.g., PostgreSQL, Storage, Key Vault)."
  type        = string
}

variable "subresource_names" {
  description = "List of subresource names for the private service connection (e.g., [\"postgresqlServer\"])."
  type        = list(string)
} 