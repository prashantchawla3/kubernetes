variable "prometheus_image" {
  description = "The Docker image for Prometheus."
  default     = "prom/prometheus:v2.2.1"
}

variable "init_container_image" {
  description = "The Docker image for the init container."
  default     = "busybox:latest"
}

variable "configmap_reload_image" {
  description = "The Docker image for the configmap reload sidecar."
  default     = "jimmidyson/configmap-reload:v0.1"
}

variable "prometheus_replicas" {
  description = "Number of replicas for the Prometheus StatefulSet."
  default     = 1
}

variable "prometheus_storage_size" {
  description = "Storage size for Prometheus data."
  default     = "16Gi"
}

variable "storage_class" {
  description = "Storage class name for persistent volume claim."
  default     = "standard"
}
