resource "kubernetes_service_v1" "service" {
  metadata {
    name = var.service_name
    namespace = var.namespace_name
    labels = {
      app = var.app_label
    }
  }
  
  spec {
    selector = {
      app = var.app_label
    }
    
    port {
      port        = var.exposed_service_port
      target_port = var.target_service_port
    }
    
    type = var.service_type
  }
}