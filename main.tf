module "test-module" {
  source = "github.com/Rajesh333942/TfRemote"
  container_groups    = var.container_groups
  resource_group_name = var.resource_group_name
  location            = var.location
  Repo_URL= var.Repo_URL
}