output "application_credentials" {
  description = "Credentials generated for the sensitive data demonstration."

  value = {
    username = terraform_data.secret_demo.output.username
    password = terraform_data.secret_demo.output.password
  }

  sensitive = true
}
