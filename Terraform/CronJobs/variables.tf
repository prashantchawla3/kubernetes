variable "cron_job_name" {
  description = "Name of the Kubernetes cron job"
  default     = "demo"
}

variable "cron_job_schedule" {
  description = "Schedule for the Kubernetes cron job"
  default     = "1 0 * * *"
}

variable "cron_job_image" {
  description = "Docker image for the cron job"
  default     = "busybox"
}

variable "cron_job_command" {
  description = "Command to run in the cron job container"
  default     = ["/bin/sh", "-c", "date; echo Hello from the Kubernetes cluster"]
}
