resource "kubernetes_pod_disruption_budget" "demo" {
  metadata {
    name = var.pdb_name
  }

  spec {
    max_unavailable = var.pdb_max_unavailable

    selector {
      match_labels = {
        test = var.pdb_selector_label
      }
    }
  }
}
