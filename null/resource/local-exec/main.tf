# https://registry.terraform.io/providers/hashicorp/null/3.2.1/docs/resources/resource
# https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec
# terraform null provider version: 3.2.1

resource "null_resource" "this" {
  triggers = var.triggers

  provisioner "local-exec" {
    command     = var.command
    working_dir = var.working_dir
    interpreter = var.interpreter
    environment = var.environment
    when        = var.when
    quiet       = var.quiet
  }
}
