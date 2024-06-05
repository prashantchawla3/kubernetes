variable "snapshot_name" {
  description = "Name of the VolumeSnapshot"
  type        = string
  default     = "example-snapshot"
}

variable "snapshot_class_name" {
  description = "Name of the VolumeSnapshotClass to be used"
  type        = string
  default     = "example-snapshot-class"
}

variable "pvc_name" {
  description = "Name of the Persistent Volume Claim to snapshot"
  type        = string
  default     = "example-pvc"
}
