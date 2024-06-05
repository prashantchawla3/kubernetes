variable "daemonset_name" {
  description = "Name of the Kubernetes DaemonSet"
  default     = "terraform-example"
}

variable "daemonset_namespace" {
  description = "Namespace where the DaemonSet will be deployed"
  default     = "something"
}

variable "daemonset_image" {
  description = "Docker image for the DaemonSet"
  default     = "nginx:1.21.6"
}

variable "daemonset_cpu_limit" {
  description = "CPU limit for the DaemonSet container"
  default     = "0.5"
}

variable "daemonset_memory_limit" {
  description = "Memory limit for the DaemonSet container"
  default     = "512Mi"
}

variable "daemonset_cpu_request" {
  description = "CPU request for the DaemonSet container"
  default     = "250m"
}

variable "daemonset_memory_request" {
  description = "Memory request for the DaemonSet container"
  default     = "50Mi"
}
