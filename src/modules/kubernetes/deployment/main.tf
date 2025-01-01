resource "kubernetes_deployment" "deployment" {
  metadata {
    name      = var.deployment_name
    namespace = var.namespace
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.app_label
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_label
        }
      }

      spec {
        container {
          image = var.image
          name  = var.container_name
          port {
            container_port = var.container_port
          }
        }
      }
    }
  }
}
