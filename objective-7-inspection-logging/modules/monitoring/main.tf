resource "terraform_data" "monitor" {
  input = {
    name    = "lab-monitor"
    enabled = true
  }
}
