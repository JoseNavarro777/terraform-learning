locals {
  inspection_names = ["management", "app", "database"]
}

resource "terraform_data" "inventory" {
  count = length(local.inspection_names)

  input = {
    name = local.inspection_names[count.index]
  }

  lifecycle {
    create_before_destroy = true
  }
}
moved {
  from = terraform_data.inspection
  to   = terraform_data.inventory
}
