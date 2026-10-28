Terraform and Azure Infrastructure Portfolio

I work in Azure infrastructure support and am building practical skills in Infrastructure as Code and DevOps. This repository documents hands-on Terraform work with Azure, reusable modules, Terraform state, HCP Terraform, and GitHub workflows.

I passed the HashiCorp Terraform Associate (004) certification on September 17, 2026.

Featured Project: Terraform Master Lab

master-lab/ is an end-to-end learning project that provisions and manages Azure infrastructure with Terraform. It combines configuration, module, state-management, and HCP Terraform exercises.

The lab created Azure resource groups, a virtual network, and three subnets: application, database, and management. The resources have since been destroyed. The configuration remains in the repository, and applying it can recreate the infrastructure.

What I practiced

Reusable configuration: Built a local network module with typed inputs, outputs, and provider passing. Used for_each to create subnets from a map.

Terraform language: Worked with variables, tfvars, locals, outputs, expressions, validations, preconditions, postconditions, checks, lifecycle rules, and sensitive and ephemeral values.

State and maintenance: Inspected state, tested drift and refresh-only plans, moved and removed resource addresses, imported existing resources, generated configuration, and used -replace and Terraform logging.

Safe workflow: Formatted and validated configuration, reviewed plans, applied saved plans, verified state and outputs, and cleaned up the deployed infrastructure.

HCP Terraform: Migrated local state, used remote execution and state locking, configured workspace variables and a variable set, and authenticated to Azure using workload identity federation (OIDC).

Git and GitHub: Worked on a feature branch, reviewed changes, and merged them through a pull request.

Run triggers, policies, teams and permissions, and health assessments were reviewed. Some HCP Terraform features were not available for hands-on practice under the organization’s plan.

Validation and final state

terraform fmt and terraform validate completed successfully.

HCP Terraform remote plans and applies were verified.

Azure CLI confirmed the lab resource groups were deleted.

The HCP Terraform workspace state is empty after cleanup.

The project is a learning lab rather than a production-ready module. Because its Terraform configuration remains, a future plan can propose recreating the infrastructure.

Tools and Technologies

Terraform · Microsoft Azure · AzureRM provider · Azure CLI · HCP Terraform · Git · GitHub · HCL

Repository Practices

Commit Terraform configuration and .terraform.lock.hcl.

Exclude Terraform state, saved plans, local variable files, and logs from Git.

Use branches and pull requests to review infrastructure changes.

Next Learning Area

Networking applied to DevOps
