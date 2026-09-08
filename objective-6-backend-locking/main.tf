terraform {
  required_version = ">= 1.4.0"
}

resource "terraform_data" "backend_lab" {
  input = "Objective 6 - remote state"
}

output "lab_message" {
  value = terraform_data.backend_lab.output
}
