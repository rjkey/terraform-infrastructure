resource "kubernetes_namespace_v1" "kubernetes_namespace" {
  metadata {
    name = var.namespace_name
  }
}
