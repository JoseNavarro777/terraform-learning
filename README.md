# Terraform Learning

Hands-on Terraform labs documenting my progress toward the HashiCorp Terraform Associate certification and my broader transition into DevOps, Infrastructure as Code, and cloud automation.

This repository is a learning portfolio. Each lab reinforces Terraform concepts through practical exercises while also applying Git and GitHub workflows such as feature branches, commits, diffs, pull requests, version control, and repository hygiene.

## Goals

* Build a strong practical understanding of Infrastructure as Code (IaC)
* Apply Terraform concepts to real cloud infrastructure
* Develop confidence with Terraform CLI workflows
* Understand providers, state, version constraints, dependency management, and planning behavior
* Apply Git and GitHub practices while developing infrastructure code
* Build skills relevant to DevOps and Platform Engineering roles

## Technologies

* Terraform
* Microsoft Azure
* AzureRM provider
* Azure CLI
* HCP Terraform
* Git and GitHub
* HCL (HashiCorp Configuration Language)

## Progress

* Objective 1 — Completed
* Objective 2 — Completed
* Objective 3 — Completed
* Objectives 1–3 Master Lab — Completed
* HashiCorp Terraform Associate (004) — Passed September 17, 2026

## Labs

### Objective 1 — Infrastructure as Code

`objective-1-iac-lab`

Introduces the Terraform workflow and core Infrastructure as Code concepts.

Topics practiced:

* Declarative infrastructure
* Terraform configuration files
* `terraform init`
* `terraform fmt`
* `terraform validate`
* `terraform plan`
* `terraform apply`
* Terraform state
* Infrastructure lifecycle concepts
* Git-based version control

---

### Objective 2 — Providers and State

`objective-2-provider-state-lab`

Introduces Terraform providers and demonstrates Terraform managing real Azure infrastructure.

Topics practiced:

* AzureRM provider configuration
* Provider requirements
* Resource creation in Azure
* Terraform state inspection
* Updating existing infrastructure
* Resource tags
* Terraform state versus real infrastructure

---

### Objective 2 — Terraform Version Constraints

`objective-2-version-constraints-lab`

Explores Terraform CLI version compatibility and configuration constraints.

Topics practiced:

* `required_version`
* Version constraint operators
* Minimum and maximum Terraform versions
* Pessimistic constraints (`~>`)
* Team compatibility considerations
* Terraform CLI version management concepts

---

### Objective 2 — Provider Versioning

`objective-2-provider-versioning-lab`

Explores how Terraform manages provider dependencies and versions.

Topics practiced:

* `required_providers`
* Provider source addresses
* Provider version constraints
* `.terraform.lock.hcl`
* Dependency locking
* Reproducible Terraform environments
* Provider upgrades

---

### Objective 2 — Terraform Block

`objective-2-terraform-block-lab`

Explores the Terraform configuration block and how Terraform declares CLI and provider requirements.

Topics practiced:

* `terraform {}` block
* `required_version`
* `required_providers`
* Provider source addresses
* Version constraints

---

### Objective 3 — Core Terraform Workflow

`objective-3-core-workflow-lab`

Practices the Terraform core workflow against Azure infrastructure.

Topics practiced:

* Write → Plan → Apply
* Resource dependencies
* Dependency graph behavior
* Infrastructure updates
* Safe change review
* Terraform plan interpretation
* Git branches and pull requests

---

### Objective 3 — Terraform Init

`objective-3-init-lab`

Focused practice with Terraform working-directory initialization.

Topics practiced:

* `terraform init`
* Provider installation
* `.terraform/`
* `.terraform.lock.hcl`
* Reinitialization
* Provider dependency preparation

---

### Objective 3 — Terraform Fmt

`objective-3-fmt-lab`

Focused practice with Terraform configuration formatting.

Topics practiced:

* `terraform fmt`
* `terraform fmt -check`
* `terraform fmt -diff`
* Canonical Terraform formatting
* Git diff review after formatting

---

### Objective 3 — Terraform Validate

`objective-3-validate-lab`

Focused practice with Terraform configuration validation.

Topics practiced:

* `terraform validate`
* Configuration correctness
* Difference between formatting and validation
* Validation limitations
* Git-based change workflow

---

### Objectives 1–3 Master Lab

`master-lab/`

End-to-end Terraform lab using Azure and HCP Terraform. The Azure resources used in the exercises were destroyed at the end of the lab. The configuration remains available to reproduce the exercises.

Infrastructure deployed during the lab:

* Azure resource groups
* Virtual network
* Application subnet
* Database subnet
* Management subnet

Topics practiced:

* Terraform and provider version constraints
* AzureRM provider requirements and aliases
* Provider initialization and `.terraform.lock.hcl`
* Variables, `terraform.tfvars` precedence, locals, outputs, complex types, functions, and expressions
* `for_each` and `count`
* Implicit dependencies and `depends_on`
* Lifecycle rules, including `create_before_destroy`
* Variable validation, preconditions, postconditions, and check blocks
* Sensitive and ephemeral values
* Reusable local modules, module variables and outputs, and provider passing
* Versioned registry modules
* State inspection, drift, and refresh-only plans
* `moved` and `removed` blocks
* CLI and configuration-driven imports
* Saved plans, replacement, and Terraform logging
* HCP Terraform workspaces and remote execution
* Local-to-HCP state migration and state locking
* CLI-driven workflow, projects, and variable sets
* Azure dynamic credentials using workload identity federation (OIDC)

HCP run triggers, policies, teams and permissions, and health assessments were also reviewed. Availability of some features depends on the HCP Terraform plan.

The HCP workspace state is empty after cleanup. Because the Terraform configuration remains, a regular plan can propose recreating the lab infrastructure.

## Terraform and Git Workflow

The labs increasingly follow a realistic Infrastructure as Code workflow:

```text
Start from updated main
        ↓
Create feature branch
        ↓
Write or modify Terraform
        ↓
terraform fmt -check
        ↓
terraform validate
        ↓
terraform plan
        ↓
Review Terraform plan
        +
Review git diff
        ↓
Apply when appropriate
        ↓
Verify state / infrastructure
        ↓
Stage changes
        ↓
Review git diff --staged
        ↓
Commit
        ↓
Push
        ↓
Pull request
        ↓
Review and merge
        ↓
Sync local main
