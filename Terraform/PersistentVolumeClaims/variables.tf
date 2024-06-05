variable "pv_name" {
  description = "Name of the Kubernetes Persistent Volume"
  default     = "examplevolumename"
}

variable "pvc_name" {
  description = "Name of the Kubernetes Persistent Volume Claim"
  default     = "exampleclaimname"
}

variable "storage_size" {
  description = "Storage size for both PV and PVC"
  default     = "10Gi"
}

variable "access_modes" {
  description = "Access modes for the PV and PVC"
  default     = ["ReadWriteMany"]
}

variable "pd_name" {
  description = "Name of the GCE persistent disk"
  default     = "test-123"
}
