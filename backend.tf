terraform {
  cloud {
    organization = "my-personal-organization-project"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}
