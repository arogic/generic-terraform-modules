variable "name" {
  description = <<EOF
  (Required) Release name. The length must not be longer than 53 characters.
EOF
  type        = string
}

variable "chart" {
  description = <<EOF
  (Required) Chart name to be installed. The chart name can be local path,
  a URL to a chart, or the name of the chart if `repository` is specified.
  It is also possible to use the `<repository>/<chart>` format here if you are
  running Terraform on a system that the repository has been added to with
  `helm repo add` but this is not recommended.
EOF
  type        = string
}

variable "repository" {
  description = <<EOF
  (Optional) Repository URL where to locate the requested chart.
EOF
  default     = null
  type        = string
}

variable "repository_key_file" {
  description = <<EOF
  (Optional) The repositories cert key file.
EOF
  default     = null
  type        = string
}

variable "repository_cert_file" {
  description = <<EOF
  (Optional) The repositories cert file.
EOF
  default     = null
  type        = string
}

variable "repository_ca_file" {
  description = <<EOF
  (Optional) The Repositories CA File.
EOF
  default     = null
  type        = string
}

variable "repository_username" {
  description = <<EOF
  (Optional) Username for HTTP basic authentication against the repository.
EOF
  default     = null
  type        = string
}

variable "repository_password" {
  description = <<EOF
  (Optional) Password for HTTP basic authentication against the repository.
EOF
  default     = null
  type        = string
}

variable "devel" {
  description = <<EOF
  (Optional) Use chart development versions, too. Equivalent to version '>0.0.0-0'.
  If version is set, this is ignored.
EOF
  default     = null
  type        = string
}

variable "release_version" {
  description = <<EOF
  (Optional) Specify the exact chart version to install. If this is not specified,
  the latest version is installed. `helm_release` will not automatically grab the
  latest release, version must explicitly upgraded when upgrading an installed chart.
EOF
  default     = null
  type        = string
}

variable "namespace" {
  description = <<EOF
  (Optional) The namespace to install the release into. Defaults to `default`.
EOF
  default     = null
  type        = string
}

variable "verify" {
  description = <<EOF
  (Optional) Verify the package before installing it. Helm uses a provenance file
  to verify the integrity of the chart; this must be hosted alongside the chart.
  For more information see the <a href="https://helm.sh/docs/topics/provenance/">Helm Documentation</a>.
  Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "keyring" {
  description = <<EOF
  (Optional) Location of public keys used for verification.
  Used only if `verify` is true. Defaults to `/.gnupg/pubring.gpg` in the location set by `home`.
EOF
  default     = null
  type        = string
}

variable "timeout" {
  description = <<EOF
  (Optional) Time in seconds to wait for any individual kubernetes operation
  (like Jobs for hooks). Defaults to `300` seconds.
EOF
  default     = null
  type        = number
}

variable "disable_webhooks" {
  description = <<EOF
  (Optional) Prevent hooks from running. Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "reuse_values" {
  description = <<EOF
  (Optional) When upgrading, reuse the last release's values and merge in any
  overrides. If 'reset_values' is specified, this is ignored. Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "reset_values" {
  description = <<EOF
  (Optional) When upgrading, reset the values to the ones built into the chart.
  Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "force_update" {
  description = <<EOF
  (Optional) Force resource update through delete/recreate if needed.
  Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "recreate_pods" {
  description = <<EOF
  (Optional) Perform pods restart during upgrade/rollback. Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "cleanup_on_fail" {
  description = <<EOF
  (Optional) Allow deletion of new resources created in this upgrade when upgrade fails.
  Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "max_history" {
  description = <<EOF
  (Optional) Maximum number of release versions stored per release.
  Defaults to `0` (no limit).
EOF
  default     = null
  type        = number
}

variable "atomic" {
  description = <<EOF
  (Optional) If set, installation process purges chart on fail.
  The wait flag will be set automatically if atomic is used.
  Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "skip_crds" {
  description = <<EOF
  (Optional) If set, no CRDs will be installed. By default, CRDs are installed
  if not already present. Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "render_subchart_notes" {
  description = <<EOF
  (Optional) If set, render subchart notes along with the parent. Defaults to `true`.
EOF
  default     = null
  type        = bool
}

variable "disable_openapi_validation" {
  description = <<EOF
  (Optional) If set, the installation process will not validate rendered templates
  against the Kubernetes OpenAPI Schema. Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "wait" {
  description = <<EOF
  (Optional) Will wait until all resources are in a ready state before marking
  the release as successful. It will wait for as long as `timeout`.
  Defaults to `true`.
EOF
  default     = null
  type        = bool
}

variable "wait_for_jobs" {
  description = <<EOF
   (Optional) If wait is enabled, will wait until all Jobs have been completed
   before marking the release as successful. It will wait for as long as `timeout`.
   Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "values" {
  description = <<EOF
  (Optional) List of values in raw yaml to pass to helm. Values will be merged,
  in order, as Helm does with multiple `-f` options.
EOF
  default     = []
  type        = list(string)
}

variable "set" {
  description = <<EOF
  (Optional) Value block with custom STRING values to be merged with the values yaml.
EOF
  default     = []
  type        = list(any)
}

variable "set_list" {
  description = <<EOF
  (Optional) Value block with list of custom values to be merged with the values yaml.
EOF
  default     = []
  type        = list(any)
}

variable "set_sensitive" {
  description = <<EOF
  (Optional) Value block with custom sensitive values to be merged with the values yaml
  that won't be exposed in the plan's diff.
EOF
  default     = []
  type        = list(any)
}

variable "dependency_update" {
  description = <<EOF
  (Optional) Runs helm dependency update before installing the chart.
  Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "replace" {
  description = <<EOF
  (Optional) Re-use the given name, only if that name is a deleted release which
  remains in the history. This is unsafe in production. Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "description" {
  description = <<EOF
  (Optional) Set release description attribute (visible in the history).
EOF
  default     = null
  type        = string
}

variable "postrender" {
  description = <<EOF
  (Optional) Configure a command to run after helm renders the manifest which
  can alter the manifest contents.
EOF
  default     = []
  type        = list(any)
}

variable "pass_credentials" {
  description = <<EOF
  (Optional) Pass credentials to all domains. Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "lint" {
  description = <<EOF
  (Optional) Run the helm chart linter during the plan. Defaults to `false`.
EOF
  default     = null
  type        = bool
}

variable "create_namespace" {
  description = <<EOF
  (Optional) Create the namespace if it does not yet exist. Defaults to `false`.
EOF
  default     = null
  type        = bool
}
