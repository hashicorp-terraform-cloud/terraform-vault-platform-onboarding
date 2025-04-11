// onboarding project
variable "project_name" {
  description = "The name of the project to onboard"
  type        = string
}

// kubernetes cluster details
variable "kubernetes_cluster_api_address" {
  description = "kubernetes cluster api address"
  type        = string
}

variable "kubernetes_cluster_token" {
  description = "kubernetes cluster token. not for production use cases."
  type        = string
}

variable "kubernetes_cluster_insecure" {
  description = "value to skip TLS verification. not for production use cases."
  type        = bool
  default     = false
}

variable "vault_cluster_address" {
  description = "vault cluster api address"
  type        = string
}

variable "vault_cluster_token" {
  description = "vault cluster token. not for production use cases."
  type        = string
}

variable "vautl_cluster_root_namespace" {
  description = "the namespace  to ue as the root for onboarding"
  type        = string
}
