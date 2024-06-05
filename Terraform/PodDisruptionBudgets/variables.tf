variable "pdb_name" {
  description = "Name of the Pod Disruption Budget"
  default     = "demo"
}

variable "pdb_max_unavailable" {
  description = "Maximum percentage of unavailable pods during a voluntary disruption"
  default     = "20%"
}

variable "pdb_selector_label" {
  description = "Selector label for pods to match in the Pod Disruption Budget"
  default     = "MyExampleApp"
}
