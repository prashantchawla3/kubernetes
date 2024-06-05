variable "pod_name" {
  description = "Name of the Kubernetes pod"
  type        = string
}

variable "container_name" {
  description = "Name of the container within the pod"
  type        = string
}

variable "container_image" {
  description = "Docker image for the container"
  type        = string
}

variable "env_name" {
  description = "Name of the environment variable for the container"
  type        = string
}

variable "env_value" {
  description = "Value of the environment variable for the container"
  type        = string
}

variable "container_port" {
  description = "The port that the container exposes"
  type        = number
}

variable "liveness_path" {
  description = "Path for the liveness probe HTTP GET request"
  type        = string
}

variable "liveness_header_name" {
  description = "HTTP header name for the liveness probe"
  type        = string
}

variable "liveness_header_value" {
  description = "HTTP header value for the liveness probe"
  type        = string
}

variable "initial_delay_seconds" {
  description = "Initial delay seconds for the liveness probe"
  type        = number
}

variable "period_seconds" {
  description = "Period seconds for the liveness probe"
  type        = number
}

variable "nameservers" {
  description = "List of DNS nameservers for the pod"
  type        = list(string)
}

variable "search_domains" {
  description = "DNS search domains for the pod"
  type        = list(string)
}

variable "dns_options" {
  description = "List of DNS options"
  type        = list(map(string))
}

variable "dns_policy" {
  description = "DNS policy for the pod"
  type        = string
}
