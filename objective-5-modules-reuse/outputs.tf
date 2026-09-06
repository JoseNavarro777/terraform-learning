output "resource_group_names" {
  description = "Resource group names for both environments."

  value = {
    dev  = module.dev.resource_group_name
    test = module.test.resource_group_name
  }
}

output "resource_group_ids" {
  description = "Resource group IDs for both environments."

  value = {
    dev  = module.dev.resource_group_id
    test = module.test.resource_group_id
  }
}
