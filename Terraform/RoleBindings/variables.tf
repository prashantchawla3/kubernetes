variable "role_binding_name" {
  description = "Name of the Kubernetes Role Binding"
  default     = "terraform-example"
}

variable "role_binding_namespace" {
  description = "Namespace for the Role Binding"
  default     = "default"
}

variable "role_name" {
  description = "Name of the Role to bind"
  default     = "admin"
}

variable "user_name" {
  description = "Name of the User for Role Binding"
  default     = "admin"
}

variable "service_account_name" {
  description = "Name of the Service Account for Role Binding"
  default     = "default"
}

variable "service_account_namespace" {
  description = "Namespace of the Service Account for Role Binding"
  default     = "kube-system"
}

variable "group_name" {
  description = "Name of the Group for Role Binding"
  default     = "system:masters"
}
