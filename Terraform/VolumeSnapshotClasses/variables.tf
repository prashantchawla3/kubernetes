variable "snapshot_class_name" {
  description = "Name of the VolumeSnapshotClass"
  type        = string
  default     = "example-snapshot-class"
}

variable "snapshot_driver" {
  description = "Driver name for the VolumeSnapshotClass"
  type        = string
  default     = "csi-driver-name"
}
