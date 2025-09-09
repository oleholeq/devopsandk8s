###=== FLUXCD Bootstrap Terraform Module ===###
module "flux_bootstrap" {
  source            = "./modules/fluxcd-flux-bootstrap"
  github_repository = "${var.github_owner}/${var.flux_github_repo}"
  private_key       = module.tls_private_key.private_key_pem
  config_host       = module.kind_cluster.endpoint
  github_token      = var.github_token
}

###==== Github Repository Module ===###
module "github_repository" {
  source                   = "github.com/den-vasyliev/tf-github-repository"
  github_owner             = var.github_owner
  github_token             = var.github_token
  repository_name          = var.flux_github_repo
  public_key_openssh       = module.tls_private_key.public_key_openssh
  public_key_openssh_title = "flux"
}

###==== TLS Private Key Module ===###
module "tls_private_key" {
  source = "github.com/den-vasyliev/tf-hashicorp-tls-keys"

  algorithm   = "RSA"
}
###==== OUTPUTS ===###
output "private_key_pem" {
  value = module.tls_private_key.private_key_pem
  sensitive = true
}

output "public_key_openssh" {
  value = module.tls_private_key.public_key_openssh
  sensitive = true
}
module "kind_cluster" {
  source = "github.com/den-vasyliev/tf-kind-cluster?ref=cert_auth"
}
