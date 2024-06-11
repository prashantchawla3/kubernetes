resource "kubernetes_config_map" "example" {
  metadata {
    name = var.config_map_name
  }

  data = {
    api_host             = var.api_host
    db_host              = var.db_host
   
  }

}
