output "id" {
  description = <<EOF
  (String) This is set to a random value at create time.
EOF
  value       = null_resource.this.id
}
