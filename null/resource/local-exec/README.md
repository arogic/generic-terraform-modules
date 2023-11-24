<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |

## Resources

| Name | Type |
|------|------|
| [null_resource.this](https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_command"></a> [command](#input\_command) | (Required) This is the command to execute. It can be provided as a relative <br>  path to the current working directory or as an absolute path. It is evaluated <br>  in a shell, and can use environment variables or Terraform variables. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | (Optional) block of key value pairs representing the environment of the <br>  executed command. inherits the current process environment. | `map(any)` | `null` | no |
| <a name="input_interpreter"></a> [interpreter](#input\_interpreter) | (Optional) If provided, this is a list of interpreter arguments used to execute <br>  the command. The first argument is the interpreter itself. It can be provided <br>  as a relative path to the current working directory or as an absolute path. <br>  The remaining arguments are appended prior to the command. This allows building <br>  command lines of the form "/bin/bash", "-c", "echo foo". If `interpreter` is <br>  unspecified, sensible defaults will be chosen based on the system OS. | `list(string)` | `null` | no |
| <a name="input_quiet"></a> [quiet](#input\_quiet) | (Optional) If set to `true`, Terraform will not print the command to be executed <br>  to stdout, and will instead print "Suppressed by quiet=true". Note that the <br>  output of the command will still be printed in any case. | `bool` | `null` | no |
| <a name="input_triggers"></a> [triggers](#input\_triggers) | (Required) A map of arbitrary strings that, when changed, will force <br>  the null resource to be replaced, re-running any associated provisioners. | `map(any)` | n/a | yes |
| <a name="input_when"></a> [when](#input\_when) | (Optional) If provided, specifies when Terraform will execute the command. <br>  For example, `when = destroy` specifies that the provisioner will run when the <br>  associated resource is destroyed. Refer to Destroy-Time Provisioners for details.<br>  https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax#destroy-time-provisioners | `string` | `null` | no |
| <a name="input_working_dir"></a> [working\_dir](#input\_working\_dir) | (Optional) If provided, specifies the working directory where `command` will be <br>  executed. It can be provided as a relative path to the current working directory <br>  or as an absolute path. The directory must exist. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | (String) This is set to a random value at create time. |
<!-- END_TF_DOCS -->