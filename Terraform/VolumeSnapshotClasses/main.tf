# prashantchawla@JKP24PFPJ2- VolumeSnapshotClasses % terraform validate
# ╷
# │ Error: Invalid resource type
# │ 
# │   on main.tf line 1, in resource "kubernetes_volume_snapshot_class_v1beta1" "example_class":
# │    1: resource "kubernetes_volume_snapshot_class_v1beta1" "example_class" {
# │ 
# │ The provider hashicorp/kubernetes does not support resource type "kubernetes_volume_snapshot_class_v1beta1".


resource "kubernetes_volume_snapshot_class_v1beta1" "example_class" {
  metadata {
    name = var.snapshot_class_name
  }

  driver = var.snapshot_driver
  deletion_policy = "Delete"
}
