terraform {
  backend "azurerm" {
    resource_group_name   = "my-tfstate-rg"         # Must exist in Azure
    storage_account_name  = "mytfstateprodsa"       # Must exist in Azure
    container_name        = "tfstate"               # Must exist in the storage account
    key                   = "terraform.tfstate"
  }
} 