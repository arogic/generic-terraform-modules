output "manifest" {
  description = <<EOF
  The rendered manifest of the release as JSON.
  Enable the `manifest` experiment to use this feature.
EOF
  value       = helm_release.this.manifest
}

output "metadata" {
  description = <<EOF
  Block status of the deployed release as defined in the <a href="https://registry.terraform.io/providers/hashicorp/helm/2.11.0/docs/resources/release#attributes-reference">documentation</a>.
EOF
  value       = helm_release.this.metadata
}

output "status" {
  description = <<EOF
  Status of the release.
EOF
  value       = helm_release.this.status
}
