# prashantchawla@JKP24PFPJ2- VolumeSnapshots % terraform validate
# ╷
# │ Error: Invalid resource type
# │ 
# │   on main.tf line 1, in resource "kubernetes_volume_snapshot_v1beta1" "example_snapshot":
# │    1: resource "kubernetes_volume_snapshot_v1beta1" "example_snapshot" {
# │ 
# │ The provider hashicorp/kubernetes does not support resource type "kubernetes_volume_snapshot_v1beta1".

resource "kubernetes_volume_snapshot_v1beta1" "example_snapshot" {
  metadata {
    name = var.snapshot_name
  }

  spec {
    volume_snapshot_class_name = var.snapshot_class_name
    source {
      persistent_volume_claim_name = var.pvc_name
    }
  }
}
