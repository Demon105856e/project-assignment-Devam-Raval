resource "github_repository" "student_repo" {
  name        = var.repo_name
  description = "Terraform GitHub Repository for Devam"
  visibility  = "public"
  auto_init   = true

  has_issues  = true
  has_wiki    = true
}
