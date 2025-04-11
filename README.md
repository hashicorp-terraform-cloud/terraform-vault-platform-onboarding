<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.36.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 4.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.36.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 4.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_namespace.project](https://registry.terraform.io/providers/hashicorp/kubernetes/2.36.0/docs/resources/namespace) | resource |
| [vault_kv_secret_backend_v2.kvv2](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/kv_secret_backend_v2) | resource |
| [vault_mount.kvv2](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/mount) | resource |
| [vault_namespace.project](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/namespace) | resource |
| [vault_policy.policy](https://registry.terraform.io/providers/hashicorp/vault/4.7.0/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubernetes_cluster_api_address"></a> [kubernetes\_cluster\_api\_address](#input\_kubernetes\_cluster\_api\_address) | kubernetes cluster api address | `string` | n/a | yes |
| <a name="input_kubernetes_cluster_insecure"></a> [kubernetes\_cluster\_insecure](#input\_kubernetes\_cluster\_insecure) | value to skip TLS verification. not for production use cases. | `bool` | `false` | no |
| <a name="input_kubernetes_cluster_token"></a> [kubernetes\_cluster\_token](#input\_kubernetes\_cluster\_token) | kubernetes cluster token. not for production use cases. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of the project to onboard | `string` | n/a | yes |
| <a name="input_vault_cluster_address"></a> [vault\_cluster\_address](#input\_vault\_cluster\_address) | vault cluster api address | `string` | n/a | yes |
| <a name="input_vault_cluster_token"></a> [vault\_cluster\_token](#input\_vault\_cluster\_token) | vault cluster token. not for production use cases. | `string` | n/a | yes |
| <a name="input_vautl_cluster_root_namespace"></a> [vautl\_cluster\_root\_namespace](#input\_vautl\_cluster\_root\_namespace) | the namespace  to ue as the root for onboarding | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubernetes_namespace"></a> [kubernetes\_namespace](#output\_kubernetes\_namespace) | n/a |
| <a name="output_vault_namespace_path"></a> [vault\_namespace\_path](#output\_vault\_namespace\_path) | n/a |
| <a name="output_vault_namespace_path_fq"></a> [vault\_namespace\_path\_fq](#output\_vault\_namespace\_path\_fq) | n/a |
<!-- END_TF_DOCS -->