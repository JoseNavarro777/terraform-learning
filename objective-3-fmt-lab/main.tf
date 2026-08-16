
terraform {
  required_version = ">= 1.12.0"
}

variable "environment" {
  type    = string
  default = "dev"
}

locals {
  project_name = "terraform-fmt-lab"
}

output "lab_info" {
  value = "${local.project_name}-${var.environment}"
}
