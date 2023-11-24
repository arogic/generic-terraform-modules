variable "triggers" {
  description = <<EOF
  (Required) A map of arbitrary strings that, when changed, will force 
  the null resource to be replaced, re-running any associated provisioners.
EOF
  type        = map(any)
}

variable "command" {
  description = <<EOF
  (Required) This is the command to execute. It can be provided as a relative 
  path to the current working directory or as an absolute path. It is evaluated 
  in a shell, and can use environment variables or Terraform variables.
EOF
  type        = string
}

variable "interpreter" {
  description = <<EOF
  (Optional) If provided, this is a list of interpreter arguments used to execute 
  the command. The first argument is the interpreter itself. It can be provided 
  as a relative path to the current working directory or as an absolute path. 
  The remaining arguments are appended prior to the command. This allows building 
  command lines of the form "/bin/bash", "-c", "echo foo". If `interpreter` is 
  unspecified, sensible defaults will be chosen based on the system OS.
EOF
  default     = null
  type        = list(string)
}

variable "working_dir" {
  description = <<EOF
  (Optional) If provided, specifies the working directory where `command` will be 
  executed. It can be provided as a relative path to the current working directory 
  or as an absolute path. The directory must exist.
EOF
  default     = null
  type        = string
}

variable "environment" {
  description = <<EOF
  (Optional) block of key value pairs representing the environment of the 
  executed command. inherits the current process environment.
EOF
  default     = null
  type        = map(any)
}

variable "when" {
  description = <<EOF
  (Optional) If provided, specifies when Terraform will execute the command. 
  For example, `when = destroy` specifies that the provisioner will run when the 
  associated resource is destroyed. Refer to Destroy-Time Provisioners for details.
  https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax#destroy-time-provisioners
EOF
  default     = null
  type        = string
}

variable "quiet" {
  description = <<EOF
  (Optional) If set to `true`, Terraform will not print the command to be executed 
  to stdout, and will instead print "Suppressed by quiet=true". Note that the 
  output of the command will still be printed in any case.
EOF
  default     = null
  type        = bool
}
