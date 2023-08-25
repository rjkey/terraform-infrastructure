terraform {
    source = "git::git@github.com:rjkey/terraform-infrastructure-modules//src/environments/localhost/cluster/k8s"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    namespace_name = 'rara'
}

