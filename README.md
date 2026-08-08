# Terraform Learning

Hands-on Terraform labs documenting my progress toward the **HashiCorp Terraform Associate certification** and my broader transition into **DevOps, Infrastructure as Code, and cloud automation**.

This repository is intentionally built as a learning portfolio. Each lab reinforces Terraform concepts through practical exercises while also applying Git and GitHub workflows such as branching, commits, version control, and repository hygiene.

## Goals

The objectives of this repository are to:

* Build a strong practical understanding of **Infrastructure as Code (IaC)**
* Prepare for the **HashiCorp Terraform Associate certification**
* Practice managing cloud infrastructure declaratively with Terraform
* Develop confidence with Terraform CLI workflows
* Understand providers, state, version constraints, and dependency management
* Apply Git and GitHub practices while developing infrastructure code
* Build skills relevant to future **DevOps / Platform Engineering** roles

##  Technologies

* Terraform
* Microsoft Azure
* Git
* GitHub
* Azure CLI
* HCL (HashiCorp Configuration Language)

##  Labs

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

##  Terraform Workflow

The labs generally follow the standard Terraform lifecycle:

```text
Write configuration
        ↓
terraform fmt
        ↓
terraform init
        ↓
terraform validate
        ↓
terraform plan
        ↓
terraform apply
        ↓
Inspect infrastructure / state
        ↓
Modify configuration
        ↓
Plan and apply again
```

Infrastructure is removed when it is no longer required using:

```bash
terraform destroy
```

##  Learning Approach

Rather than studying Terraform only from documentation, I use small labs to connect certification concepts with real Terraform behavior.

For example, when learning about providers, state, or version constraints, I create a focused lab, inspect Terraform's behavior, modify the configuration, and observe how Terraform responds.

This repository will continue evolving as I progress through the Terraform certification objectives and expand into broader DevOps topics.

##  Current Focus

Currently studying:

**HashiCorp Terraform Associate**

Areas being developed include:

* Terraform configuration
* Providers
* State
* Terraform and provider version management
* Resource dependencies
* Variables and outputs
* Terraform modules
* Terraform workflows
* Remote state and collaboration

##  Longer-Term Direction

Terraform is part of a broader effort to strengthen my skills in:

* Infrastructure as Code
* Cloud automation
* Git-based engineering workflows
* CI/CD
* Containers and Kubernetes
* DevOps and Platform Engineering

The repository will be updated continuously as new concepts and labs are completed.

---

> Learning Terraform one concept, one lab, and one commit at a time.

