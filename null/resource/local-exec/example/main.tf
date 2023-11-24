# ============================================================================ #
# Local Variables
# ============================================================================ #
locals {
  triggers = {
    always_run = timestamp()
  }

  command = <<EOF
    echo "This is a Test"
    ./test.sh $foo $bar
EOF
}

# ============================================================================ #
# Modules
# ============================================================================ #
module "null_resource" {
  source      = "git::https://github.com/arogic/generic-terraform-modules.git//null/resource/local-exec?ref=null-3.2.1"
  triggers    = local.triggers
  command     = local.command
  interpreter = ["/bin/sh", "-c"]
  working_dir = "${path.cwd}/scripts"
  environment = {
    foo = var.foo
    bar = var.bar
    dah = "- Welcome"
  }
}
