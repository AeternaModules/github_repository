variable "repositories" {
  description = <<EOT
Map of repositories, attributes below
Required:
    - name
Optional:
    - allow_auto_merge
    - allow_forking
    - allow_merge_commit
    - allow_rebase_merge
    - allow_squash_merge
    - allow_update_branch
    - archive_on_destroy
    - archived
    - auto_init
    - default_branch
    - delete_branch_on_merge
    - description
    - etag
    - fork
    - gitignore_template
    - has_discussions
    - has_downloads
    - has_issues
    - has_projects
    - has_wiki
    - homepage_url
    - ignore_vulnerability_alerts_during_read
    - is_template
    - license_template
    - merge_commit_message
    - merge_commit_title
    - private
    - source_owner
    - source_repo
    - squash_merge_commit_message
    - squash_merge_commit_title
    - topics
    - visibility
    - vulnerability_alerts
    - web_commit_signoff_required
    - pages (block):
        - build_type (optional)
        - cname (optional)
        - source (optional, block):
            - branch (required)
            - path (optional)
    - security_and_analysis (block):
        - advanced_security (optional, block):
            - status (required)
        - code_security (optional, block):
            - status (required)
        - secret_scanning (optional, block):
            - status (required)
        - secret_scanning_ai_detection (optional, block):
            - status (required)
        - secret_scanning_non_provider_patterns (optional, block):
            - status (required)
        - secret_scanning_push_protection (optional, block):
            - status (required)
    - template (block):
        - include_all_branches (optional)
        - owner (required)
        - repository (required)
EOT

  type = map(object({
    name                                    = string
    has_wiki                                = optional(bool)
    homepage_url                            = optional(string)
    ignore_vulnerability_alerts_during_read = optional(bool)
    is_template                             = optional(bool)
    license_template                        = optional(string)
    merge_commit_message                    = optional(string)
    has_projects                            = optional(bool)
    merge_commit_title                      = optional(string)
    source_owner                            = optional(string)
    source_repo                             = optional(string)
    squash_merge_commit_message             = optional(string)
    squash_merge_commit_title               = optional(string)
    topics                                  = optional(set(string))
    visibility                              = optional(string)
    private                                 = optional(bool)
    has_issues                              = optional(bool)
    has_downloads                           = optional(bool)
    has_discussions                         = optional(bool)
    allow_auto_merge                        = optional(bool)
    allow_forking                           = optional(bool)
    allow_merge_commit                      = optional(bool)
    allow_rebase_merge                      = optional(bool)
    allow_squash_merge                      = optional(bool)
    allow_update_branch                     = optional(bool)
    archive_on_destroy                      = optional(bool)
    archived                                = optional(bool)
    auto_init                               = optional(bool)
    default_branch                          = optional(string)
    delete_branch_on_merge                  = optional(bool)
    description                             = optional(string)
    etag                                    = optional(string)
    fork                                    = optional(string)
    gitignore_template                      = optional(string)
    vulnerability_alerts                    = optional(bool)
    web_commit_signoff_required             = optional(bool)
    pages = optional(object({
      build_type = optional(string)
      cname      = optional(string)
      source = optional(object({
        branch = string
        path   = optional(string)
      }))
    }))
    security_and_analysis = optional(object({
      advanced_security = optional(object({
        status = string
      }))
      code_security = optional(object({
        status = string
      }))
      secret_scanning = optional(object({
        status = string
      }))
      secret_scanning_ai_detection = optional(object({
        status = string
      }))
      secret_scanning_non_provider_patterns = optional(object({
        status = string
      }))
      secret_scanning_push_protection = optional(object({
        status = string
      }))
    }))
    template = optional(object({
      include_all_branches = optional(bool)
      owner                = string
      repository           = string
    }))
  }))
  # --- Unconfirmed validation candidates, derived from github_repository's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: can(regex("^[-a-zA-Z0-9_.]{1,100}$", value))
  #   message:   must include only alphanumeric characters, underscores or hyphens and consist of 100 characters or less
  # path: visibility
  #   condition: contains(["public", "private", "internal"], value)
  #   message:   must be one of: public, private, internal
  # path: security_and_analysis.advanced_security.status
  #   condition: contains(["enabled", "disabled"], value)
  #   message:   must be one of: enabled, disabled
  # path: security_and_analysis.code_security.status
  #   condition: contains(["enabled", "disabled"], value)
  #   message:   must be one of: enabled, disabled
  # path: security_and_analysis.secret_scanning.status
  #   condition: contains(["enabled", "disabled"], value)
  #   message:   must be one of: enabled, disabled
  # path: security_and_analysis.secret_scanning_push_protection.status
  #   condition: contains(["enabled", "disabled"], value)
  #   message:   must be one of: enabled, disabled
  # path: security_and_analysis.secret_scanning_ai_detection.status
  #   condition: contains(["enabled", "disabled"], value)
  #   message:   must be one of: enabled, disabled
  # path: security_and_analysis.secret_scanning_non_provider_patterns.status
  #   condition: contains(["enabled", "disabled"], value)
  #   message:   must be one of: enabled, disabled
  # path: pages.build_type
  #   source:    validateValueFunc: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: topics[*]
  #   condition: can(regex("^[a-z0-9][a-z0-9-]{0,49}$", value))
  #   message:   must include only lowercase alphanumeric characters or hyphens and cannot start with a hyphen and consist of 50 characters or less
}

