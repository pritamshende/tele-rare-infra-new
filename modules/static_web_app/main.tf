# Azure Static Web App Module
# Provisions a Static Web App for frontend hosting with CI/CD integration.

resource "azurerm_static_site" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
}
#If you need CI/CD integration, it is handled outside of this resource (e.g., via GitHub Actions or Azure DevOps). Let me know if you want a more advanced example!