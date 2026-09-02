resource "terraform_data" "deployment" {
  input = var.deployment

  lifecycle {
    precondition {
      condition = (
        var.deployment.environment != "production" ||
        var.deployment.replicas >= 2
      )

      error_message = "Production deployments must have at least 2 replicas."
    }

    postcondition {
      condition     = self.output.status == "healthy"
      error_message = "Deployment status must be healthy."
    }
  }
}

check "production_capacity" {
  assert {
    condition = (
      var.deployment.environment != "production" ||
      var.deployment.replicas >= 6
    )

    error_message = "Production should have at least 6 replicas."
  }
}
