variable "app_name" {
  type        = string
  description = "Name of the application and associated resources"
  default     = "terraform-example"
}

variable "app_label" {
  type        = string
  description = "Label used to connect the service to the pod"
  default     = "MyApp"
}

variable "image" {
  type        = string
  description = "Docker image for the Kubernetes pod"
  default     = "nginx:1.21.6"
}

variable "service_port" {
  type        = number
  description = "Port exposed by the Kubernetes service"
  default     = 8080
}

variable "target_port" {
  type        = number
  description = "Port on the container that the service directs traffic to"
  default     = 80
}

variable "service_type" {
  type        = string
  description = "Type of service to create"
  default     = "LoadBalancer"
}
