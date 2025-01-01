resource "kubernetes_service_account_v1" "service_account" {
  metadata {
    name      = var.name
    namespace = var.namespace
    annotations = var.annotations
  }
}