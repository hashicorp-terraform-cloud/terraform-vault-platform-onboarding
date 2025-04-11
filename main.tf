terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.36.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "4.7.0"
    }
  }
}

provider "kubernetes" {
  host     = var.kubernetes_cluster_api_address
  token    = var.kubernetes_cluster_token
  insecure = var.kubernetes_cluster_insecure
}

provider "vault" {
  address   = var.vault_cluster_address
  token     = var.vault_cluster_token
  namespace = var.vautl_cluster_root_namespace
}
