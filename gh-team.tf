resource "github_team" "sdk_maintainers" {
  name        = "SDK Maintainers"
  description = "Maintains and improves SDKs. Reviews PRs, manages issues, and ensures alignment with API standards."
  privacy     = "closed"
}
