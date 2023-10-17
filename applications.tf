locals {
  common-applications-variables = {
    __PROJECT      = local.project.name
    __ORGANIZATION = local.project.github_organization
    __ABOUT        = local.project.about
  }
}

locals {
  applications = {
    compute = {
      github_repository                    = "compute"
      github_repository_visibility         = "private"
      github_repository_topics             = ["python", "aws", "ecr", "docker"]
      template_repositories                = ["", ""],
      templated_files_variables            = merge(local.common-applications-variables, { __REPOSITORY = "compute" })
      template_fork                        = false
      service                              = "compute-model"
      policy                               = local.policies.compute
      allow_force_pushes_to_default_branch = false
    }
  }
}

module "applications" {
  for_each = local.applications

  source = "github.com/codingones-terraform-modules/aws-application"

  aws_organizational_unit = local.project.aws_organizational_unit
  github_organization     = local.project.github_organization
  terraform_organization  = local.project.terraform_cloud_organization
  project                 = local.project.name

  github_repository            = each.value.github_repository
  github_repository_visibility = each.value.github_repository_visibility
  github_repository_topics     = each.value.github_repository_topics

  template_repositories     = each.value.template_repositories
  templated_files_variables = each.value.templated_files_variables
  template_fork             = each.value.template_fork

  service = each.value.service
  policy  = each.value.policy

  # TODO Replace  local.first_run by if the repo exist or not
  allow_force_pushes_to_default_branch = local.first_run || each.value.allow_force_pushes_to_default_branch


  providers = {
    github = github
    tfe    = tfe
    aws    = aws.organizational_unit
    http   = http
  }

  depends_on = [module.github_organization]
}
