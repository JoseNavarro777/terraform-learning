resource "terraform_data" "handoff_ready" {
  input = "Network checks completed; ready for handoff."

  depends_on = [
    terraform_data.network_readiness
  ]
}
