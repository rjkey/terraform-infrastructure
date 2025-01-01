resource "kubernetes_cluster_role_binding_v1" "cluster_role_binding" {
  metadata {
    name = var.cluster_role_binding_name
  }
  role_ref {
    api_group = var.role_ref_api_group
    kind      = var.role_ref_api_group_kind
    name      = var.role_ref_api_group_name
  }
  subject {
    kind      = var.subject_kind
    name      = var.subject_name
    namespace = var.namespace
  }
  depends_on = var.depends_on
}
