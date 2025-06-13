resource "github_branch" "this" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_branch_default" "this" {
  repository = github_repository.this.name
  branch     = github_branch.this.branch
}
