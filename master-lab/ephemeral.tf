variable "temporary_token" {
  description = "Fake temporary token for the ephemeral-value exercise."
  type        = string
  sensitive   = true
  ephemeral   = true
}

resource "terraform_data" "ephemeral_demo" {
  provisioner "local-exec" {
    command = "test -n \"$LAB_TEMPORARY_TOKEN\""

    environment = {
      LAB_TEMPORARY_TOKEN = var.temporary_token
    }
  }
}
