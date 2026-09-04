terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 5.0"
    }
  }
}

provider "vault" {
}

ephemeral "vault_kv_secret_v2" "application" {
  mount = "secret"
  name  = "application"
}

resource "terraform_data" "ephemeral_demo" {
  provisioner "local-exec" {
    command = "test -n \"$APP_PASSWORD\" && echo 'Vault secret was available ephemerally during apply'"

    environment = {
      APP_PASSWORD = ephemeral.vault_kv_secret_v2.application.data["password"]
    }
  }
}
