terraform {
    source = "git::git@github.com:rjkey/terraform-infrastructure-modules//src/environments/localhost/db/mssql"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    namespace_name = "rjk-test-namespace"
    mssql_image_name = "mcr.microsoft.com/mssql/server:2022-latest"
}

