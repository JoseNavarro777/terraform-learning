variable "deployment" {
  description = "Configuration for the application deployment."

  type = object({
    environment = string
    replicas    = number
    status      = string
  })

  validation {
    condition = contains(
      ["development", "staging", "production"],
      var.deployment.environment
    )

    error_message = "Environment must be development, staging, or production."
  }
}
