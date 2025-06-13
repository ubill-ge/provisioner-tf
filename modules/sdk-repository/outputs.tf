output "name" {
  description = "Name of the managed Repository"
  value       = github_repository.this.name
}

output "id" {
  description = "ID of the managed Repository"
  value       = github_repository.this.id
}

output "node_id" {
  description = "Node ID of the managed Repository"
  value       = github_repository.this.node_id
}
