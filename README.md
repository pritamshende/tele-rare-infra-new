
# Tele-Rare Infra: Production-Ready Azure & AKS Infrastructure

## Project Summary
This infrastructure is designed for security, automation, and scalability:
- **Security & Compliance:** Uses Azure best practices, RBAC, private endpoints, and WAF. No secrets are hardcoded.
- **Modularity:** Each Azure service is a reusable Terraform module, making it easy to scale or replicate environments.
- **Automation:** CI/CD with GitHub Actions, GitOps with ArgoCD/FluxCD, and automated monitoring with Prometheus & Grafana.
- **Observability:** Real-time monitoring and alerting with Prometheus, Grafana, Azure Monitor, and Log Analytics.
- **Business Value:** Reduces manual effort, accelerates delivery, and ensures compliance and operational excellence.

---

## Overview
This repository provides a modular, production-grade infrastructure setup for the Tele-Rare Health Platform, using:
- **Terraform** for Azure resource provisioning
- **Azure Kubernetes Service (AKS)** for container orchestration
- **Azure Container Registry (ACR)** for Docker images
- **Private Endpoints** for secure service access
- **GitHub Actions** for CI/CD
- **ArgoCD/FluxCD** for GitOps deployment
- **Prometheus & Grafana** for monitoring

---

## Prerequisites
- Azure subscription & CLI access
- Terraform >= 1.3.0
- kubectl, helm
- GitHub repository (with Actions enabled)
- (Optional) ArgoCD or FluxCD installed on AKS

---

## 1. Terraform Infrastructure Setup

### **A. Configure Backend State**
Edit `backend.tf` with your Azure Storage Account details for remote state.

### **B. Update Variables**
Edit `variables.tf` and module variables as needed (resource group, location, secrets, etc.).

### **C. Initialize & Apply**
```sh
terraform init
terraform validate
terraform plan
terraform apply
```

---

## 2. AKS, ACR, and Private Endpoints
- AKS and ACR are provisioned via modules (`modules/aks`, `modules/acr`).
- Private Endpoints are available for PostgreSQL, Storage, Key Vault, etc.
- Outputs include kubeconfig for cluster access.

---

## 3. CI/CD Pipeline (GitHub Actions)
- See `.github/workflows/ci-cd.yaml` for a full pipeline:
  - Docker build & push to ACR
  - SonarQube scan
  - Trivy scan
  - GitOps deployment to AKS via ArgoCD
- **Set required secrets** in your GitHub repo:
  - `ACR_NAME`, `ACR_LOGIN_SERVER`, `ACR_USERNAME`, `ACR_PASSWORD`
  - `SONAR_HOST_URL`, `SONAR_TOKEN`
  - `ARGOCD_SERVER`, `ARGOCD_AUTH_TOKEN`

---

## 4. GitOps & Monitoring

### **A. Prometheus & Grafana (Monitoring)**
- GitOps manifests in `k8s-gitops/monitoring/`:
  - `helmrepositories.yaml` (Helm repos for FluxCD/ArgoCD)
  - `prometheus-helmrelease.yaml` (Prometheus stack)
  - `grafana-helmrelease.yaml` (Grafana dashboard)
- Apply with FluxCD/ArgoCD or directly with Helm.
- Access Grafana via LoadBalancer IP (default admin password: `ChangeMe123!`).

### **B. ArgoCD/FluxCD (GitOps)**
- Deploy ArgoCD/FluxCD to AKS (see their docs for bootstrap).
- Point to your GitOps repo/folder for continuous deployment.

---

## 5. Best Practices
- **Change all default passwords and secrets before production.**
- Use Azure Key Vault for secret management.
- Enable RBAC and network policies in AKS.
- Monitor costs and enable auto-scaling as needed.
- Regularly update Helm charts and Terraform providers.

---

## 6. Useful Commands
- Get AKS credentials:
  ```sh
  az aks get-credentials --resource-group <rg> --name <aks-name>
  ```
- Access Grafana:
  ```sh
  kubectl get svc -n monitoring
  # Open the EXTERNAL-IP in your browser
  ```
- Trigger CI/CD:
  - Push to `main` branch or open a PR.

---

## 7. Support & Customization
- For advanced features (Azure AD SSO, custom dashboards, GitOps bootstrap, etc.), open an issue or contact the DevOps team.

---

## 8. License
MIT 
=======
# tele-rare-backend
>>>>>>> ce4f2f015c68d833bbdb5626293706c66164f25e
