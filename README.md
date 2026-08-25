# Terraform Learning

Hands-on Terraform labs documenting my progress toward the HashiCorp Terraform Associate certification and my broader transition into DevOps, Infrastructure as Code, and cloud automation.

This repository is intentionally built as a learning portfolio. Each lab reinforces Terraform concepts through practical exercises while also applying Git and GitHub workflows such as feature branches, commits, diffs, Pull Requests, version control, and repository hygiene.

## Goals

The objectives of this repository are to:

* Build a strong practical understanding of Infrastructure as Code (IaC)
* Prepare for the HashiCorp Terraform Associate certification
* Practice managing cloud infrastructure declaratively with Terraform
* Develop confidence with Terraform CLI workflows
* Understand providers, state, version constraints, dependency management, and Terraform planning behavior
* Apply Git and GitHub practices while developing infrastructure code
* Build skills relevant to future DevOps / Platform Engineering roles

## Technologies

* Terraform
* Microsoft Azure
* AzureRM Provider
* Azure CLI
* Git
* GitHub
* HCL (HashiCorp Configuration Language)

## Progress

* Objective 1 — Completed
* Objective 2 — Completed
* Objective 3 — Completed
* Objectives 1–3 Master Lab — Completed

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
* Terraform state vs real infrastructure

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
* Git branches and Pull Requests

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

`objective-1-2-3-master-lab`

End-to-end lab combining the major concepts from Objectives 1, 2, and 3 into one Terraform lifecycle.

Infrastructure deployed:

* Azure Resource Group
* Virtual Network
* Application subnet
* Database subnet
* Backend subnet

Topics practiced:

* Terraform CLI version constraints
* AzureRM provider requirements
* Provider initialization
* Dependency lock file
* Variables and `terraform.tfvars`
* Implicit resource dependencies
* Terraform dependency graph
* `terraform fmt`
* `terraform validate`
* `terraform plan`
* Saved plans with `-out`
* Applying saved plans
* Terraform state inspection
* Idempotence and reconciliation
* Day-2 infrastructure changes
* `terraform plan -detailed-exitcode`
* `-target`
* `-replace`
* `-refresh=false`
* `-refresh-only`
* `-auto-approve`
* `-parallelism`
* Partial apply failure behavior
* `terraform plan -destroy`
* `terraform destroy`
* Git diff and staged diff review
* Feature branches
* Pull Requests
* Merge and branch cleanup

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
Pull Request
        ↓
Review and merge
        ↓
Sync local main
```

## Repository Hygiene

Terraform-generated and environment-specific files are handled intentionally.

Typically committed:

* `.tf` configuration files
* `.terraform.lock.hcl`
* `.gitignore`

Typically ignored:

* `.terraform/`
* `*.tfstate`
* `*.tfstate.*`
* saved plan files such as `tfplan`
* crash logs

This keeps Terraform source configuration and dependency metadata in version control while excluding local working data and potentially sensitive state.

## Core Terraform Mental Model

Terraform is declarative.

The configuration describes the desired infrastructure, while Terraform uses state and provider information to calculate the changes needed to reach that desired state.

```text
Configuration
"What I want"
        ↓
Terraform state
"What Terraform knows and manages"
        ↓
Cloud infrastructure
"What actually exists"
```

`terraform plan` evaluates the difference and proposes the actions needed to reconcile them.

## Learning Approach

Rather than studying Terraform only from documentation, I use hands-on labs to connect certification concepts with real Terraform behavior.

The learning process increasingly follows:

```text
Concept
→ Exam-style question
→ Explanation
→ Practical action
→ Verification
```

This helps reinforce not only which Terraform command to use, but also why Terraform behaves the way it does.

The labs also progressively incorporate realistic DevOps practices such as:

* Feature branches
* Pull Requests
* Infrastructure change review
* Git diff review
* Terraform plan review
* Repository hygiene
* Reproducible provider dependencies
* Safe infrastructure lifecycle management

## Current Focus

Currently studying:

**HashiCorp Terraform Associate**

Completed so far:

* Objective 1
* Objective 2
* Objective 3
* Objectives 1–3 Master Lab

The next phase of the repository will continue with the remaining Terraform Associate objectives while gradually introducing additional DevOps practices when they become relevant to the certification material.

## Longer-Term Direction

Terraform is part of a broader effort to strengthen my skills in:

* Infrastructure as Code
* Cloud automation
* Git-based engineering workflows
* CI/CD
* Containers and Kubernetes
* DevOps and Platform Engineering

The repository will continue evolving as new Terraform certification objectives and practical labs are completed.

---

> Learning Terraform one concept, one lab, and one commit at a time.

