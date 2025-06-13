resource "github_repository_file" "this" {
  for_each = var.files

  repository          = github_repository.this.name
  file                = each.key
  content             = each.value.content
  commit_message      = each.value.commit_message
  overwrite_on_create = true
}
