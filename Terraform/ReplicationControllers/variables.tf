variable "rc_name" {
  description = "Name of the replication controller"
  default     = "terraform-example"
}

variable "app_label" {
  description = "Label used to connect the service to the pod"
  default     = "MyExampleApp"
}

variable "annotation_value" {
  description = "Value of the annotation key1"
  default     = "value1"
}

variable "container_image" {
  description = "Docker image for the container"
  default     = "nginx:1.21.6"
}

variable "container_name" {
  description = "Name of the container within the pod"
  default     = "example"
}

variable "probe_path" {
  description = "Path for the HTTP liveness probe"
  default     = "/"
}

variable "probe_port" {
  description = "Port for the HTTP liveness probe"
  default     = 80
}

variable "http_header_name" {
  description = "Name of the custom HTTP header for the liveness probe"
  default     = "X-Custom-Header"
}

variable "http_header_value" {
  description = "Value of the custom HTTP header for the liveness probe"
  default     = "Awesome"
}

variable "initial_delay_seconds" {
  description = "Initial delay seconds for the liveness probe"
  default     = 3
}

variable "period_seconds" {
  description = "Period seconds for the liveness probe"
  default     = 3
}

variable "limits_cpu" {
  description = "CPU limits for the container"
  default     = "0.5"
}

variable "limits_memory" {
  description = "Memory limits for the container"
  default     = "512Mi"
}

variable "requests_cpu" {
  description = "CPU requests for the container"
  default     = "250m"
}

variable "requests_memory" {
  description = "Memory requests for the container"
  default     = "50Mi"
}
