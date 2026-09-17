resource "terraform_data" "network_readiness" {
  input = module.network.subnet_ids

  lifecycle {
    precondition {
      condition     = length(module.network.subnet_ids) == 3
      error_message = "Network readiness requires exactly three subnets."
    }

    postcondition {
      condition     = length(self.output) == 3
      error_message = "The recorded network output must contain three subnet IDs."
    }
  }
}
