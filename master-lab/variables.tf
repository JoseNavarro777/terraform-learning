variable "location" {
  description = "Azure region for the lab resources."
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "Environment represented by this deployment."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be dev, test, or prod."
  }
}

variable "project_name" {
  description = "Project name used in resource names."
  type        = string
  default     = "master-lab"
}
