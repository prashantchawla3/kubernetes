resource "kubernetes_config_map" "example" {
  metadata {
    name = var.config_map_name
  }

  data = {
    api_host             = var.api_host
    db_host              = var.db_host
    "my_config_file.yml" = file(var.config_file_path)
  }

  binary_data = {
    "my_payload.bin" = filebase64(var.payload_file_path)
  }
}
