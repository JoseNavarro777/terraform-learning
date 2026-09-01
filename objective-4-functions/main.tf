locals {
  environment_regions = {
    dev  = "eastus"
    prod = "westus2"
  }

  selected_environment = "qa"

  selected_region = lookup(
    local.environment_regions,
    local.selected_environment,
    "centralus"
  )

  rendered_greeting = templatefile("${path.module}/greeting.tftpl", {
    name        = "Jose"
    environment = local.selected_environment
  })

  message = file("${path.module}/message.txt")
}
