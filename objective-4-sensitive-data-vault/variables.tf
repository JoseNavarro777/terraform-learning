variable "application_secret" {
  description = "A secret value used to demonstrate Terraform sensitive data behavior."
  type        = string
  sensitive   = true
}
