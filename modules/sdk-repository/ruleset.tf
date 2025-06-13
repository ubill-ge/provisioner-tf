resource "github_repository_ruleset" "default" {
  name        = "Default"
  repository  = github_repository.this.name
  target      = "branch"
  enforcement = "active"

  conditions {
    ref_name {
      include = ["~DEFAULT_BRANCH"]
      exclude = []
    }
  }

  bypass_actors {
    actor_id    = 0
    actor_type  = "OrganizationAdmin"
    bypass_mode = "always"
  }

  rules {
    creation                = false
    update                  = false
    required_signatures     = false
    non_fast_forward        = true
    deletion                = true
    required_linear_history = true

    pull_request {
      dismiss_stale_reviews_on_push     = true
      require_code_owner_review         = true
      require_last_push_approval        = false
      required_approving_review_count   = 1
      required_review_thread_resolution = true
    }

    required_status_checks {
      do_not_enforce_on_create             = false
      strict_required_status_checks_policy = false

      dynamic "required_check" {
        for_each = var.rulesetrequired_checks
        content {
          context        = required_check.value.context
          integration_id = required_check.value.integration_id
        }
      }
    }
  }
}
