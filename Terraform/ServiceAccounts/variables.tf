variable "service_account_name" {
  description = "Name of the Kubernetes Service Account"
  default     = "terraform-example"
}

variable "secret_generate_name_prefix" {
  description = "Prefix for the generated name of the Kubernetes Secret"
  default     = "terraform-example-"
}
