variable "deployment_name" {
  description = "Name of the Kubernetes deployment"
  default     = "terraform-example"
}

variable "deployment_image" {
  description = "Docker image for the deployment"
  default     = "nginx:1.21.6"
}

variable "deployment_replicas" {
  description = "Number of replicas for the deployment"
  type        = number
  default     = 3
}

variable "deployment_cpu_limit" {
  description = "CPU limit for the deployment container"
  default     = "0.5"
}

variable "deployment_memory_limit" {
  description = "Memory limit for the deployment container"
  default     = "512Mi"
}

variable "deployment_cpu_request" {
  description = "CPU request for the deployment container"
  default     = "250m"
}

variable "deployment_memory_request" {
  description = "Memory request for the deployment container"
  default     = "50Mi"
}
