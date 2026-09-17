resource "azurerm_resource_group" "handoff" {
  name     = "rg-master-lab-handoff"
  location = var.location
  tags     = local.common_tags
}
