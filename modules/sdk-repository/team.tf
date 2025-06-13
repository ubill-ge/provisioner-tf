resource "github_team_repository" "this" {
  team_id    = var.team_id
  repository = github_repository.this.name
  permission = "push"
}
