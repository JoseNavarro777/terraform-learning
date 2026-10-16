terraform {
  cloud {
    organization = "jose-navarro-labs"

    workspaces {
      name = "master-lab"
    }
  }
}
