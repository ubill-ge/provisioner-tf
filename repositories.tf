module "go_sdk_repository" {
  source = "./modules/sdk-repository"

  sdk          = "go"
  description  = "Go SDK for working with the UBill API"
  homepage_url = "https://pkg.go.dev/github.com/ubill-ge/sdk-go"
  team_id      = github_team.sdk_maintainers.id
  rulesetrequired_checks = [
    {
      context        = "test-and-lint"
      integration_id = 15368
    },
    {
      context        = "update-release-draft / update-release-draft"
      integration_id = 15368
    }
  ]
  files = {
    ".github/workflows/generate.yaml" = {
      content        = file("${path.module}/files/sdk/go/generate.yaml")
      commit_message = "ci: update generate.yaml workflow"
    }
    ".openapi-generator-ignore" = {
      content        = file("${path.module}/files/sdk/go/.openapi-generator-ignore")
      commit_message = "ci: update .openapi-generator-ignore"
    }
  }
}

module "php_sdk_repository" {
  source = "./modules/sdk-repository"

  sdk          = "php"
  description  = "PHP SDK for working with the UBill API"
  homepage_url = "https://packagist.org/packages/ubill/sdk"
  team_id      = github_team.sdk_maintainers.id
  rulesetrequired_checks = [
    {
      context        = "lint"
      integration_id = 15368
    },
    {
      context        = "test (8.1)"
      integration_id = 15368
    },
    {
      context        = "test (8.2)"
      integration_id = 15368
    },
    {
      context        = "test (8.3)"
      integration_id = 15368
    },
    {
      context        = "test (8.4)"
      integration_id = 15368
    },
    {
      context        = "test (8.5)"
      integration_id = 15368
    },
    {
      context        = "update-release-draft / update-release-draft"
      integration_id = 15368
    }
  ]
  files = {
    ".github/workflows/generate.yaml" = {
      content        = file("${path.module}/files/sdk/php/generate.yaml")
      commit_message = "ci: update generate.yaml workflow"
    },
    ".openapi-generator-ignore" = {
      content        = file("${path.module}/files/sdk/php/.openapi-generator-ignore")
      commit_message = "ci: update .openapi-generator-ignore"
    }
  }
}

module "ts_sdk_repository" {
  source = "./modules/sdk-repository"

  sdk          = "ts"
  description  = "TS/JS SDK for working with the UBill API"
  homepage_url = "https://www.npmjs.com/package/@ubill/sdk"
  team_id      = github_team.sdk_maintainers.id
  rulesetrequired_checks = [
    {
      context        = "lint"
      integration_id = 15368
    },
    {
      context        = "update-release-draft / update-release-draft"
      integration_id = 15368
    }
  ]
  files = {
    ".github/workflows/generate.yaml" = {
      content        = file("${path.module}/files/sdk/ts/generate.yaml")
      commit_message = "ci: update generate.yaml workflow"
    },
    ".openapi-generator-ignore" = {
      content        = file("${path.module}/files/sdk/ts/.openapi-generator-ignore")
      commit_message = "ci: update .openapi-generator-ignore"
    }
  }
}
