terraform {
  required_version = ">= 1.4.0"
}

resource "terraform_data" "app" {
  for_each = toset(["dev", "test"])

  input = {
    environment = each.key
    version     = "2.0"
  }
}

resource "terraform_data" "database" {
  input = {
    name = "lab-database"
  }
}

module "monitoring" {
  source = "./modules/monitoring"
}
