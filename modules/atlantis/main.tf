resource "helm_release" "atlantis" {
  name       = "atlantis"
  repository = "https://helm.runatlantis.io"
  chart      = "atlantis"
  namespace  = "default"
  description = var.cluster_name
  

  set {
    name  = "vcsSecret.github.token"
    value = var.github_token
  }

  set {
    name  = "vcsSecret.github.user"
    value = var.github_user
  }

  set {
    name  = "config.repositories"
    value = jsonencode([{
      id = "github.com/org/repo"
    }])
  }
}