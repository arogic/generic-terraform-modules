# https://registry.terraform.io/providers/hashicorp/helm/2.11.0/docs/resources/release
# helm provider version: 2.11.0

resource "helm_release" "this" {
  name                       = var.name
  chart                      = var.chart
  repository                 = var.repository
  repository_key_file        = var.repository_key_file
  repository_cert_file       = var.repository_cert_file
  repository_ca_file         = var.repository_ca_file
  repository_username        = var.repository_username
  repository_password        = var.repository_password
  devel                      = var.devel
  version                    = var.release_version
  namespace                  = var.namespace
  verify                     = var.verify
  keyring                    = var.keyring
  timeout                    = var.timeout
  disable_webhooks           = var.disable_webhooks
  reuse_values               = var.reuse_values
  reset_values               = var.reset_values
  force_update               = var.force_update
  recreate_pods              = var.recreate_pods
  cleanup_on_fail            = var.cleanup_on_fail
  max_history                = var.max_history
  atomic                     = var.atomic
  render_subchart_notes      = var.render_subchart_notes
  disable_openapi_validation = var.disable_openapi_validation
  wait                       = var.wait
  wait_for_jobs              = var.wait_for_jobs
  skip_crds                  = var.skip_crds
  dependency_update          = var.dependency_update
  replace                    = var.replace
  create_namespace           = var.create_namespace
  values                     = var.values

  dynamic "set" {
    iterator = item
    for_each = length(var.set) != 0 ? [] : var.set

    content {
      name  = item.value.name
      value = item.value.value
      type  = lookup(item.value, "type", null)
    }
  }

  dynamic "set_list" {
    iterator = item
    for_each = length(var.set_list) != 0 ? [] : var.set_list

    content {
      name  = item.value.name
      value = item.value.value
      type  = lookup(item.value, "type", null)
    }
  }

  dynamic "set_sensitive" {
    iterator = item
    for_each = length(var.set_sensitive) != 0 ? [] : var.set_sensitive

    content {
      name  = item.value.name
      value = item.value.value
      type  = lookup(item.value, "type", null)
    }
  }

  dynamic "postrender" {
    iterator = item
    for_each = length(var.postrender) != 0 ? [] : var.postrender

    content {
      binary_path = item.value.binary_path
      args        = lookup(item.value, "args", null)
    }
  }
}
