resource "vault_namespace" "project" {
  path = var.project_name
}

resource "vault_policy" "policy" {
  namespace = vault_namespace.project.path
  name      = "${var.project_name}-policy"

  policy = <<EOT

path "${vault_mount.kvv2.path}/+/*" {
    capabilities = [ "create", "update", "read", "delete", "list" ]
}

path "${vault_mount.kvv2.path}/metadata" {
    capabilities = [ "list" ]
}
EOT

}

resource "vault_mount" "kvv2" {
  namespace   = vault_namespace.project.path
  path        = "kvv2"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}

resource "vault_kv_secret_backend_v2" "kvv2" {
  namespace            = vault_namespace.project.path
  mount                = vault_mount.kvv2.path
  max_versions         = 5
  delete_version_after = 86400
}
