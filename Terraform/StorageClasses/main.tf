resource "kubernetes_storage_class" "example" {
  metadata {
    name = var.storage_class_name
  }
  storage_provisioner = var.storage_provisioner
  reclaim_policy      = var.reclaim_policy
  parameters = {
    type = var.storage_type
  }
  mount_options = var.mount_options
}
