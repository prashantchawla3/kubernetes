variable "hpa_name" {
  description = "Name of the Horizontal Pod Autoscaler"
  default     = "terraform-example"
}

variable "hpa_max_replicas" {
  description = "Maximum number of replicas for the HPA"
  type        = number
  default     = 10
}

variable "hpa_min_replicas" {
  description = "Minimum number of replicas for the HPA"
  type        = number
  default     = 8
}

variable "target_deployment_name" {
  description = "Name of the target deployment for the HPA"
  default     = "MyApp"
}
