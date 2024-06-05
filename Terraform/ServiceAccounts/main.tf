resource "kubernetes_service_account" "example" {
  metadata {
    name = var.service_account_name
  }
}

resource "kubernetes_secret" "example" {
  metadata {
    annotations = {
      "kubernetes.io/service-account.name" = kubernetes_service_account.example.metadata[0].name
    }
    generate_name = var.secret_generate_name_prefix
  }

  type                           = "kubernetes.io/service-account-token"
  wait_for_service_account_token = true
}
