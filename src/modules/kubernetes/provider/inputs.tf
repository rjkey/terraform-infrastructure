variable "kubernetes_source" {
  description = "Source of kubernetes"
  type        = string
}

variable "kubernetes_version" {
  description = "Version of kubernetes"
  type        = string
}

variable "kubernetes_config_path" {
  description = "Path for the kubernetes config"
  type        = string
}

variable "kubernetes_config_context" {
  description = "Kubernetes config context"
  type        = string
}
