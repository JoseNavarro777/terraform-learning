check "subnet_count" {
  assert {
    condition     = length(module.network.subnet_ids) == 3
    error_message = "The lab network must contain exactly three subnets."
  }
}
