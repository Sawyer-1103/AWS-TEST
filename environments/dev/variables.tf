variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
 }

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "Luminor"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "github_token" {
  description = "GitHub token for Atlantis"
  default     = "xxxxxx"
  type        = string
}

variable "github_user" {
  description = "GitHub user for Atlantis"
  default     = "xxxxxx"
  type        = string
}