variable "secret_name" {
  description = "The name of the Kubernetes secret"
  default     = "basic-auth"
}

variable "username" {
  description = "Username for the basic auth"
  default     = "admin"
}

variable "password" {
  description = "Password for the basic auth"
  type        = string
  sensitive   = true
}
