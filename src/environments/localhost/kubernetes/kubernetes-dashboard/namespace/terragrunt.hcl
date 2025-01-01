terraform {
    source = "../../../../../modules/kubernetes/namespace"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    namespace_name = "kubernetes-dashboard"
}

