resource "terraform_data" "secret_demo" {
  input = {
    username = "demo-user"
    password = var.application_secret
  }
}
