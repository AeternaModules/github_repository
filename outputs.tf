output "repositories_id" {
  description = "Map of id values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repositories_allow_auto_merge" {
  description = "Map of allow_auto_merge values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_auto_merge if v.allow_auto_merge != null }
}
output "repositories_allow_forking" {
  description = "Map of allow_forking values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_forking if v.allow_forking != null }
}
output "repositories_allow_merge_commit" {
  description = "Map of allow_merge_commit values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_merge_commit if v.allow_merge_commit != null }
}
output "repositories_allow_rebase_merge" {
  description = "Map of allow_rebase_merge values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_rebase_merge if v.allow_rebase_merge != null }
}
output "repositories_allow_squash_merge" {
  description = "Map of allow_squash_merge values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_squash_merge if v.allow_squash_merge != null }
}
output "repositories_allow_update_branch" {
  description = "Map of allow_update_branch values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_update_branch if v.allow_update_branch != null }
}
output "repositories_archive_on_destroy" {
  description = "Map of archive_on_destroy values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.archive_on_destroy if v.archive_on_destroy != null }
}
output "repositories_archived" {
  description = "Map of archived values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.archived if v.archived != null }
}
output "repositories_auto_init" {
  description = "Map of auto_init values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.auto_init if v.auto_init != null }
}
output "repositories_default_branch" {
  description = "Map of default_branch values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.default_branch if v.default_branch != null && length(v.default_branch) > 0 }
}
output "repositories_delete_branch_on_merge" {
  description = "Map of delete_branch_on_merge values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.delete_branch_on_merge if v.delete_branch_on_merge != null }
}
output "repositories_description" {
  description = "Map of description values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.description if v.description != null && length(v.description) > 0 }
}
output "repositories_etag" {
  description = "Map of etag values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "repositories_fork" {
  description = "Map of fork values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.fork if v.fork != null && length(v.fork) > 0 }
}
output "repositories_full_name" {
  description = "Map of full_name values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "repositories_git_clone_url" {
  description = "Map of git_clone_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.git_clone_url if v.git_clone_url != null && length(v.git_clone_url) > 0 }
}
output "repositories_gitignore_template" {
  description = "Map of gitignore_template values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.gitignore_template if v.gitignore_template != null && length(v.gitignore_template) > 0 }
}
output "repositories_has_discussions" {
  description = "Map of has_discussions values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_discussions if v.has_discussions != null }
}
output "repositories_has_downloads" {
  description = "Map of has_downloads values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_downloads if v.has_downloads != null }
}
output "repositories_has_issues" {
  description = "Map of has_issues values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_issues if v.has_issues != null }
}
output "repositories_has_projects" {
  description = "Map of has_projects values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_projects if v.has_projects != null }
}
output "repositories_has_wiki" {
  description = "Map of has_wiki values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_wiki if v.has_wiki != null }
}
output "repositories_homepage_url" {
  description = "Map of homepage_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.homepage_url if v.homepage_url != null && length(v.homepage_url) > 0 }
}
output "repositories_html_url" {
  description = "Map of html_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.html_url if v.html_url != null && length(v.html_url) > 0 }
}
output "repositories_http_clone_url" {
  description = "Map of http_clone_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.http_clone_url if v.http_clone_url != null && length(v.http_clone_url) > 0 }
}
output "repositories_ignore_vulnerability_alerts_during_read" {
  description = "Map of ignore_vulnerability_alerts_during_read values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.ignore_vulnerability_alerts_during_read if v.ignore_vulnerability_alerts_during_read != null }
}
output "repositories_is_template" {
  description = "Map of is_template values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.is_template if v.is_template != null }
}
output "repositories_license_template" {
  description = "Map of license_template values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.license_template if v.license_template != null && length(v.license_template) > 0 }
}
output "repositories_merge_commit_message" {
  description = "Map of merge_commit_message values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.merge_commit_message if v.merge_commit_message != null && length(v.merge_commit_message) > 0 }
}
output "repositories_merge_commit_title" {
  description = "Map of merge_commit_title values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.merge_commit_title if v.merge_commit_title != null && length(v.merge_commit_title) > 0 }
}
output "repositories_name" {
  description = "Map of name values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "repositories_node_id" {
  description = "Map of node_id values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.node_id if v.node_id != null && length(v.node_id) > 0 }
}
output "repositories_pages" {
  description = "Map of pages values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.pages if v.pages != null && length(v.pages) > 0 }
}
output "repositories_primary_language" {
  description = "Map of primary_language values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.primary_language if v.primary_language != null && length(v.primary_language) > 0 }
}
output "repositories_private" {
  description = "Map of private values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.private if v.private != null }
}
output "repositories_repo_id" {
  description = "Map of repo_id values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.repo_id if v.repo_id != null }
}
output "repositories_security_and_analysis" {
  description = "Map of security_and_analysis values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.security_and_analysis if v.security_and_analysis != null && length(v.security_and_analysis) > 0 }
}
output "repositories_source_owner" {
  description = "Map of source_owner values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.source_owner if v.source_owner != null && length(v.source_owner) > 0 }
}
output "repositories_source_repo" {
  description = "Map of source_repo values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.source_repo if v.source_repo != null && length(v.source_repo) > 0 }
}
output "repositories_squash_merge_commit_message" {
  description = "Map of squash_merge_commit_message values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.squash_merge_commit_message if v.squash_merge_commit_message != null && length(v.squash_merge_commit_message) > 0 }
}
output "repositories_squash_merge_commit_title" {
  description = "Map of squash_merge_commit_title values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.squash_merge_commit_title if v.squash_merge_commit_title != null && length(v.squash_merge_commit_title) > 0 }
}
output "repositories_ssh_clone_url" {
  description = "Map of ssh_clone_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.ssh_clone_url if v.ssh_clone_url != null && length(v.ssh_clone_url) > 0 }
}
output "repositories_svn_url" {
  description = "Map of svn_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.svn_url if v.svn_url != null && length(v.svn_url) > 0 }
}
output "repositories_template" {
  description = "Map of template values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.template if v.template != null && length(v.template) > 0 }
}
output "repositories_topics" {
  description = "Map of topics values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.topics if v.topics != null && length(v.topics) > 0 }
}
output "repositories_visibility" {
  description = "Map of visibility values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.visibility if v.visibility != null && length(v.visibility) > 0 }
}
output "repositories_vulnerability_alerts" {
  description = "Map of vulnerability_alerts values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.vulnerability_alerts if v.vulnerability_alerts != null }
}
output "repositories_web_commit_signoff_required" {
  description = "Map of web_commit_signoff_required values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.web_commit_signoff_required if v.web_commit_signoff_required != null }
}

