variable "domain_name" {
  description = "Domain name for the B2C tenant (e.g., exampleb2c.onmicrosoft.com)."
  type        = string
}

variable "country_code" {
  description = "Country code for the B2C tenant (e.g., US)."
  type        = string
  default     = "US"
}

variable "display_name" {
  description = "Display name for the B2C tenant."
  type        = string
  default     = "Tele-Rare B2C"
} 