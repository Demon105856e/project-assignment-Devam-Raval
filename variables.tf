variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}

variable "repo_name" {
  default = "terraform-aman-public-repo"
}
