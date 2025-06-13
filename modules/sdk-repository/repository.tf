resource "github_repository" "this" {
  name         = "sdk-${var.sdk}"
  description  = var.description
  homepage_url = var.homepage_url
  visibility   = "public"

  allow_auto_merge       = true
  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_update_branch    = true
  delete_branch_on_merge = true
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  vulnerability_alerts   = true
}
