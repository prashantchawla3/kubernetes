variable "storage_class_name" {
  description = "Name of the Kubernetes Storage Class"
  default     = "terraform-example"
}

variable "storage_provisioner" {
  description = "Provisioner for the storage class"
  default     = "kubernetes.io/gce-pd"
}

variable "reclaim_policy" {
  description = "Reclaim policy for the storage class"
  default     = "Retain"
}

variable "storage_type" {
  description = "Type of the storage provided"
  default     = "pd-standard"
}

variable "mount_options" {
  description = "Mount options for the storage class"
  type        = list(string)
  default     = ["file_mode=0700", "dir_mode=0777", "mfsymlinks", "uid=1000", "gid=1000", "nobrl", "cache=none"]
}
