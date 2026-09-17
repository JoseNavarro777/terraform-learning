# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/70a0b66f-1c55-46bd-937c-8153aafac8f9/resourceGroups/rg-master-lab-block-import"
resource "azurerm_resource_group" "block_import" {
  location   = "eastus"
  managed_by = null
  name       = "rg-master-lab-block-import"
  tags = {
    environment = "dev"
    managed_by  = "terraform"
    project     = "master-lab"
  }
}
