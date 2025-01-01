resource "kubernetes_secret_v1" "secret" {
  metadata {
    name      = var.secret_name
    namespace = var.namespace
    annotations = {
      for key, value in var.data :
      key => base64decode(value)
    }
  }
  type = var.secret_type

  data = {
    for key, value in var.data :
    key => base64decode(value)
  }
  depends_on = var.depends_on
}