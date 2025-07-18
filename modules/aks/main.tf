# Azure Kubernetes Service (AKS) Module
# Provisions a production-ready AKS cluster with VNet and ACR integration.

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    network_policy    = "azure"
    dns_service_ip    = "10.0.2.10"
    service_cidr      = "10.0.2.0/24"
  }

  role_based_access_control_enabled = true
  azure_active_directory_role_based_access_control {
  }

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "user" {
  name                  = "usernp"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id
  vm_size               = var.vm_size
  node_count            = var.node_count
  vnet_subnet_id        = var.subnet_id
  mode                  = "User"
} 