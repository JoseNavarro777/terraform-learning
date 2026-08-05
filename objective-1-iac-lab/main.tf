terraform {
  required_version = ">= 1.0"
}

resource "terraform_data" "objective1_demo" {
  input = "Infrastructure as Code is version controlled"
}
