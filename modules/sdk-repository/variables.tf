variable "sdk" {
  description = "Name of SDK"
  type        = string
}

variable "description" {
  description = "Description for the Repository"
  type        = string
}

variable "homepage_url" {
  description = "Repository Homepage URL"
  type        = string
}

variable "team_id" {
  description = "ID of the GitHub Team to associate the repository with"
  type        = string
}

variable "rulesetrequired_checks" {
  description = "List of required checks for ruleset"
  type = list(object({
    context        = string
    integration_id = number
  }))
  default = []
}

variable "files" {
  description = "List of files to create in the Repository"
  type = map(object({
    content        = string
    commit_message = string
  }))
  default = {}
}
