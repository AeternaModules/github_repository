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
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        can(regex("^[-a-zA-Z0-9_.]{1,100}$", v.name))
      )
    ])
    error_message = "must include only alphanumeric characters, underscores or hyphens and consist of 100 characters or less"
  }
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        v.visibility == null || (contains(["public", "private", "internal"], v.visibility))
      )
    ])
    error_message = "must be one of: public, private, internal"
  }
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        v.security_and_analysis == null || (v.security_and_analysis.advanced_security == null || (contains(["enabled", "disabled"], v.security_and_analysis.advanced_security.status)))
      )
    ])
    error_message = "must be one of: enabled, disabled"
  }
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        v.security_and_analysis == null || (v.security_and_analysis.code_security == null || (contains(["enabled", "disabled"], v.security_and_analysis.code_security.status)))
      )
    ])
    error_message = "must be one of: enabled, disabled"
  }
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        v.security_and_analysis == null || (v.security_and_analysis.secret_scanning == null || (contains(["enabled", "disabled"], v.security_and_analysis.secret_scanning.status)))
      )
    ])
    error_message = "must be one of: enabled, disabled"
  }
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        v.security_and_analysis == null || (v.security_and_analysis.secret_scanning_push_protection == null || (contains(["enabled", "disabled"], v.security_and_analysis.secret_scanning_push_protection.status)))
      )
    ])
    error_message = "must be one of: enabled, disabled"
  }
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        v.security_and_analysis == null || (v.security_and_analysis.secret_scanning_ai_detection == null || (contains(["enabled", "disabled"], v.security_and_analysis.secret_scanning_ai_detection.status)))
      )
    ])
    error_message = "must be one of: enabled, disabled"
  }
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        v.security_and_analysis == null || (v.security_and_analysis.secret_scanning_non_provider_patterns == null || (contains(["enabled", "disabled"], v.security_and_analysis.secret_scanning_non_provider_patterns.status)))
      )
    ])
    error_message = "must be one of: enabled, disabled"
  }
  validation {
    condition = alltrue([
      for k, v in var.repositories : (
        v.topics == null || (alltrue([for x in v.topics : can(regex("^[a-z0-9][a-z0-9-]{0,49}$", x))]))
      )
    ])
    error_message = "must include only lowercase alphanumeric characters or hyphens and cannot start with a hyphen and consist of 50 characters or less"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

