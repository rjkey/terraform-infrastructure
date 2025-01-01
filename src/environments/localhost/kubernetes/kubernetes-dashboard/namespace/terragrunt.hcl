terraform {
    source = "../../../../../modules/kubernetes/namespace"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
    namespace_name = "kubernetes-dashboard"
}

