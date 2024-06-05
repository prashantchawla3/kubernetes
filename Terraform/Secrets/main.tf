resource "kubernetes_secret" "example" {
  metadata {
    name = var.secret_name
  }

  data = {
    username = base64encode(var.username)
    password = base64encode(var.password)
  }

  type = "kubernetes.io/basic-auth"
}
