resource "kubernetes_role_binding" "example" {
  metadata {
    name      = var.role_binding_name
    namespace = var.namespace
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "Role"
    name      = var.role_name
  }

  subject {
    kind      = "User"
    name      = var.user_name
    api_group = "rbac.authorization.k8s.io"
  }

  subject {
    kind      = "ServiceAccount"
    name      = var.service_account_name
    namespace = var.service_account_namespace
  }

  subject {
    kind      = "Group"
    name      = var.group_name
    api_group = "rbac.authorization.k8s.io"
  }
}
