resource "github_repository" "repositories" {
  for_each = var.repositories

  name                                    = each.value.name
  has_wiki                                = each.value.has_wiki
  homepage_url                            = each.value.homepage_url
  ignore_vulnerability_alerts_during_read = each.value.ignore_vulnerability_alerts_during_read
  is_template                             = each.value.is_template
  license_template                        = each.value.license_template
  merge_commit_message                    = each.value.merge_commit_message
  has_projects                            = each.value.has_projects
  merge_commit_title                      = each.value.merge_commit_title
  source_owner                            = each.value.source_owner
  source_repo                             = each.value.source_repo
  squash_merge_commit_message             = each.value.squash_merge_commit_message
  squash_merge_commit_title               = each.value.squash_merge_commit_title
  topics                                  = each.value.topics
  visibility                              = each.value.visibility
  private                                 = each.value.private
  has_issues                              = each.value.has_issues
  has_downloads                           = each.value.has_downloads
  has_discussions                         = each.value.has_discussions
  allow_auto_merge                        = each.value.allow_auto_merge
  allow_forking                           = each.value.allow_forking
  allow_merge_commit                      = each.value.allow_merge_commit
  allow_rebase_merge                      = each.value.allow_rebase_merge
  allow_squash_merge                      = each.value.allow_squash_merge
  allow_update_branch                     = each.value.allow_update_branch
  archive_on_destroy                      = each.value.archive_on_destroy
  archived                                = each.value.archived
  auto_init                               = each.value.auto_init
  default_branch                          = each.value.default_branch
  delete_branch_on_merge                  = each.value.delete_branch_on_merge
  description                             = each.value.description
  etag                                    = each.value.etag
  fork                                    = each.value.fork
  gitignore_template                      = each.value.gitignore_template
  vulnerability_alerts                    = each.value.vulnerability_alerts
  web_commit_signoff_required             = each.value.web_commit_signoff_required

  dynamic "pages" {
    for_each = each.value.pages != null ? [each.value.pages] : []
    content {
      build_type = pages.value.build_type
      cname      = pages.value.cname
      dynamic "source" {
        for_each = pages.value.source != null ? [pages.value.source] : []
        content {
          branch = source.value.branch
          path   = source.value.path
        }
      }
    }
  }

  dynamic "security_and_analysis" {
    for_each = each.value.security_and_analysis != null ? [each.value.security_and_analysis] : []
    content {
      dynamic "advanced_security" {
        for_each = security_and_analysis.value.advanced_security != null ? [security_and_analysis.value.advanced_security] : []
        content {
          status = advanced_security.value.status
        }
      }
      dynamic "code_security" {
        for_each = security_and_analysis.value.code_security != null ? [security_and_analysis.value.code_security] : []
        content {
          status = code_security.value.status
        }
      }
      dynamic "secret_scanning" {
        for_each = security_and_analysis.value.secret_scanning != null ? [security_and_analysis.value.secret_scanning] : []
        content {
          status = secret_scanning.value.status
        }
      }
      dynamic "secret_scanning_ai_detection" {
        for_each = security_and_analysis.value.secret_scanning_ai_detection != null ? [security_and_analysis.value.secret_scanning_ai_detection] : []
        content {
          status = secret_scanning_ai_detection.value.status
        }
      }
      dynamic "secret_scanning_non_provider_patterns" {
        for_each = security_and_analysis.value.secret_scanning_non_provider_patterns != null ? [security_and_analysis.value.secret_scanning_non_provider_patterns] : []
        content {
          status = secret_scanning_non_provider_patterns.value.status
        }
      }
      dynamic "secret_scanning_push_protection" {
        for_each = security_and_analysis.value.secret_scanning_push_protection != null ? [security_and_analysis.value.secret_scanning_push_protection] : []
        content {
          status = secret_scanning_push_protection.value.status
        }
      }
    }
  }

  dynamic "template" {
    for_each = each.value.template != null ? [each.value.template] : []
    content {
      include_all_branches = template.value.include_all_branches
      owner                = template.value.owner
      repository           = template.value.repository
    }
  }
}

