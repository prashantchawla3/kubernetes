# prashantchawla@JKP24PFPJ2- Routes % terraform validate
# ╷
# │ Error: Invalid resource type
# │ 
# │   on main.tf line 1, in resource "kubernetes_route" "example":
# │    1: resource "kubernetes_route" "example" {
# │ 
# │ The provider hashicorp/kubernetes does not support resource type "kubernetes_route". Did you mean "kubernetes_role"?

resource "kubernetes_route" "example" {
  metadata {
    name      = var.app_name
    namespace = var.namespace
  }

  spec {
    to {
      kind = "Service"
      name = kubernetes_service.example.metadata[0].name
    }
    host = "example.com"
  }
}

resource "kubernetes_service" "example" {
  metadata {
    name      = var.app_name
    namespace = var.namespace
  }

  spec {
    selector = {
      app = var.app_label
    }
    port {
      port        = var.service_port
      target_port = var.target_port
    }
    type = var.service_type
  }
}

resource "kubernetes_pod" "example" {
  metadata {
    name      = var.app_name
    namespace = var.namespace
    labels = {
      app = var.app_label
    }
  }

  spec {
    container {
      image = var.image
      name  = var.app_label
    }
  }
}
