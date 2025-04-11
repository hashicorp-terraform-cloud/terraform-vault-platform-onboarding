resource "kubernetes_namespace" "project" {
  metadata {
    name = var.project_name
  }
}
