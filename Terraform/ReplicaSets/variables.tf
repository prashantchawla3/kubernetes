variable "rc_name" {
  description = "Name of the Kubernetes Replication Controller"
  default     = "terraform-example"
}

variable "app_label" {
  description = "Label for the app managed by the Replication Controller"
  default     = "MyExampleApp"
}

variable "image" {
  description = "Docker image for the Replication Controller pods"
  default     = "nginx:1.21.6"
}

variable "cpu_limit" {
  description = "CPU limit for the pods"
  default     = "0.5"
}

variable "memory_limit" {
  description = "Memory limit for the pods"
  default     = "512Mi"
}

variable "cpu_request" {
  description = "CPU request for the pods"
  default     = "250m"
}

variable "memory_request" {
  description = "Memory request for the pods"
  default     = "50Mi"
}
