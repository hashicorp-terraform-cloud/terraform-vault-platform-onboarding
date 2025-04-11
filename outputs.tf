output "kubernetes_namespace" {
  value = kubernetes_namespace.project.metadata[0].name
}

output "vault_namespace_path_fq" {
  value = vault_namespace.project.path_fq
}

output "vault_namespace_path" {
  value = vault_namespace.project.path
}
