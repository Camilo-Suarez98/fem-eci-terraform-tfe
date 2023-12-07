locals {
  project = {
    "fem-eci-project" = {
      description = "Example description of project"
    }
  }
  workspace = {
    "fem-eci-tfe" = {
      description         = "Example description of workspace"
      execution_mode      = "remote"
      project_id          = module.project["fem-eci-project"].id
      vcs_repo_identifier = "Camilo-Suarez98/fem-eci-terraform-tfe"
    }
  }
}

moved {
  from = module.workspace["fem-eci-workspace"]
  to   = module.workspace["fem-eci-tfe"]
}
