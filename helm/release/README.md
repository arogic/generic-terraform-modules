<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.9.0 |

## Resources

| Name | Type |
|------|------|
| [helm_release.release](https://registry.terraform.io/providers/hashicorp/helm/2.9.0/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart"></a> [chart](#input\_chart) | (Required) Chart name to be installed. The chart name can be local path,<br>  a URL to a chart, or the name of the chart if repository is specified.<br>  It is also possible to use the <repository>/<chart> format here if you are<br>  running Terraform on a system that the repository has been added to with<br>  helm repo add but this is not recommended. | `string` | n/a | yes |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | (Optional) Create the namespace if it does not yet exist. Defaults to false. | `bool` | n/a | yes |
| <a name="input_force_update"></a> [force\_update](#input\_force\_update) | (Optional) Force resource update through delete/recreate if needed.<br>  Defaults to `false`. | `bool` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Release name. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | (Optional) The namespace to install the release into. Defaults to default. | `string` | n/a | yes |
| <a name="input_recreate_pods"></a> [recreate\_pods](#input\_recreate\_pods) | (Optional) Perform pods restart during upgrade/rollback. Defaults to `false`. | `bool` | `null` | no |
| <a name="input_release_version"></a> [release\_version](#input\_release\_version) | (Optional) Specify the exact chart version to install. If this is not<br>  specified, the latest version is installed. | `string` | `null` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | (Optional) Repository URL where to locate the requested chart. | `string` | `null` | no |
| <a name="input_reset_values"></a> [reset\_values](#input\_reset\_values) | (Optional) When upgrading, reset the values to the ones built into the chart. <br>  Defaults to false. | `bool` | `null` | no |
| <a name="input_reuse_values"></a> [reuse\_values](#input\_reuse\_values) | (Optional) When upgrading, reuse the last release's values and merge in any <br>  overrides. If 'reset\_values' is specified, this is ignored. Defaults to `false`. | `bool` | `null` | no |
| <a name="input_set"></a> [set](#input\_set) | (Optional) Value block with custom STRING values to be merged with the values yaml. | `list(any)` | `null` | no |
| <a name="input_set_sensitive"></a> [set\_sensitive](#input\_set\_sensitive) | (Optional) Value block with custom sensitive values to be merged with the <br>  values yaml that won't be exposed in the plan's diff. | `list(any)` | `null` | no |
| <a name="input_skip_crds"></a> [skip\_crds](#input\_skip\_crds) | (Optional) If set, no CRDs will be installed. By default, CRDs are installed <br>  if not already present. Defaults to `false`. | `bool` | `null` | no |
| <a name="input_values"></a> [values](#input\_values) | (Optional) List of values in raw yaml to pass to helm. Values will be merged,<br>  in order, as Helm does with multiple -f options. | `list(string)` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->