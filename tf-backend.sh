#!/bin/bash

# Set these variables to match your backend.tf
RESOURCE_GROUP="my-tfstate-rg"
LOCATION="eastus"
STORAGE_ACCOUNT="mytfstateprodsa"
CONTAINER="tfstate"

# Create resource group
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create storage account (must be globally unique)
az storage account create --name $STORAGE_ACCOUNT --resource-group $RESOURCE_GROUP --sku Standard_LRS

# Create blob container for state
az storage container create --name $CONTAINER --account-name $STORAGE_ACCOUNT

echo "Azure backend resources created successfully."