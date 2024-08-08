variable "github_token" {
  description = "The GitHub token for Atlantis to use"
  type        = string
}

variable "github_user" {
  description = "The GitHub user for Atlantis to use"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}