terraform {
  required_version = ">= 1.15.0, < 2.0.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

resource "random_pet" "demo" {
  length = 2
}

output "generated_name" {
  value = random_pet.demo.id
}
