variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "Test"
}

variable "role_arn" {
  description = "IAM role ARN for EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}