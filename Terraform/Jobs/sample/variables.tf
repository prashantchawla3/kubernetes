variable "job_name" {
  description = "Name of the Kubernetes job"
  type        = string
  default     = "demo"
}

variable "container_name" {
  description = "Name of the container in the job"
  type        = string
  default     = "pi"
}

variable "container_image" {
  description = "Docker image for the container in the job"
  type        = string
  default     = "perl"
}

variable "container_command" {
  description = "Command to be executed by the container"
  type        = list(string)
  default     = ["perl", "-Mbignum=bpi", "-wle", "print bpi(2000)"]
}

variable "restart_policy" {
  description = "Restart policy for the job's pod"
  type        = string
  default     = "Never"
}

variable "backoff_limit" {
  description = "Number of retries before considering the job as failed"
  type        = number
  default     = 4
}

variable "job_timeout_create" {
  description = "Timeout for creating the job"
  type        = string
  default     = "2m"
}

variable "job_timeout_update" {
  description = "Timeout for updating the job"
  type        = string
  default     = "2m"
}
