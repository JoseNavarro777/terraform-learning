variable "demo_secret" {
  description = "Fake value for learning sensitive-value behavior."
  type        = string
  sensitive   = true
  default     = "FAKE-lab-secret-123"
}

output "demo_secret" {
  description = "Demonstrates redaction of a sensitive output."
  value       = var.demo_secret
  sensitive   = true
}
