variable "config_map_name" {
  description = "Name of the Kubernetes ConfigMap"
  default     = "my-config"
}

variable "api_host" {
  description = "API host address"
  default     = "myhost:443"
}

variable "db_host" {
  description = "Database host address"
  default     = "dbhost:5432"
}

# variable "config_file_path" {
#   description = "Path to the configuration file"
#   default     = "${path.module}../../kubeconfig.yaml"
# }


