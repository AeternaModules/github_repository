output "repositories_id" {
  description = "Map of id values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.id }
}
output "repositories_allow_auto_merge" {
  description = "Map of allow_auto_merge values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_auto_merge }
}
output "repositories_allow_forking" {
  description = "Map of allow_forking values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_forking }
}
output "repositories_allow_merge_commit" {
  description = "Map of allow_merge_commit values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_merge_commit }
}
output "repositories_allow_rebase_merge" {
  description = "Map of allow_rebase_merge values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_rebase_merge }
}
output "repositories_allow_squash_merge" {
  description = "Map of allow_squash_merge values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_squash_merge }
}
output "repositories_allow_update_branch" {
  description = "Map of allow_update_branch values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.allow_update_branch }
}
output "repositories_archive_on_destroy" {
  description = "Map of archive_on_destroy values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.archive_on_destroy }
}
output "repositories_archived" {
  description = "Map of archived values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.archived }
}
output "repositories_auto_init" {
  description = "Map of auto_init values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.auto_init }
}
output "repositories_default_branch" {
  description = "Map of default_branch values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.default_branch }
}
output "repositories_delete_branch_on_merge" {
  description = "Map of delete_branch_on_merge values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.delete_branch_on_merge }
}
output "repositories_description" {
  description = "Map of description values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.description }
}
output "repositories_etag" {
  description = "Map of etag values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.etag }
}
output "repositories_fork" {
  description = "Map of fork values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.fork }
}
output "repositories_full_name" {
  description = "Map of full_name values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.full_name }
}
output "repositories_git_clone_url" {
  description = "Map of git_clone_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.git_clone_url }
}
output "repositories_gitignore_template" {
  description = "Map of gitignore_template values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.gitignore_template }
}
output "repositories_has_discussions" {
  description = "Map of has_discussions values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_discussions }
}
output "repositories_has_downloads" {
  description = "Map of has_downloads values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_downloads }
}
output "repositories_has_issues" {
  description = "Map of has_issues values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_issues }
}
output "repositories_has_projects" {
  description = "Map of has_projects values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_projects }
}
output "repositories_has_wiki" {
  description = "Map of has_wiki values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.has_wiki }
}
output "repositories_homepage_url" {
  description = "Map of homepage_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.homepage_url }
}
output "repositories_html_url" {
  description = "Map of html_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.html_url }
}
output "repositories_http_clone_url" {
  description = "Map of http_clone_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.http_clone_url }
}
output "repositories_ignore_vulnerability_alerts_during_read" {
  description = "Map of ignore_vulnerability_alerts_during_read values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.ignore_vulnerability_alerts_during_read }
}
output "repositories_is_template" {
  description = "Map of is_template values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.is_template }
}
output "repositories_license_template" {
  description = "Map of license_template values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.license_template }
}
output "repositories_merge_commit_message" {
  description = "Map of merge_commit_message values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.merge_commit_message }
}
output "repositories_merge_commit_title" {
  description = "Map of merge_commit_title values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.merge_commit_title }
}
output "repositories_name" {
  description = "Map of name values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.name }
}
output "repositories_node_id" {
  description = "Map of node_id values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.node_id }
}
output "repositories_pages" {
  description = "Map of pages values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.pages }
}
output "repositories_primary_language" {
  description = "Map of primary_language values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.primary_language }
}
output "repositories_private" {
  description = "Map of private values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.private }
}
output "repositories_repo_id" {
  description = "Map of repo_id values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.repo_id }
}
output "repositories_security_and_analysis" {
  description = "Map of security_and_analysis values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.security_and_analysis }
}
output "repositories_source_owner" {
  description = "Map of source_owner values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.source_owner }
}
output "repositories_source_repo" {
  description = "Map of source_repo values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.source_repo }
}
output "repositories_squash_merge_commit_message" {
  description = "Map of squash_merge_commit_message values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.squash_merge_commit_message }
}
output "repositories_squash_merge_commit_title" {
  description = "Map of squash_merge_commit_title values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.squash_merge_commit_title }
}
output "repositories_ssh_clone_url" {
  description = "Map of ssh_clone_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.ssh_clone_url }
}
output "repositories_svn_url" {
  description = "Map of svn_url values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.svn_url }
}
output "repositories_template" {
  description = "Map of template values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.template }
}
output "repositories_topics" {
  description = "Map of topics values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.topics }
}
output "repositories_visibility" {
  description = "Map of visibility values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.visibility }
}
output "repositories_vulnerability_alerts" {
  description = "Map of vulnerability_alerts values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.vulnerability_alerts }
}
output "repositories_web_commit_signoff_required" {
  description = "Map of web_commit_signoff_required values across all repositories, keyed the same as var.repositories"
  value       = { for k, v in github_repository.repositories : k => v.web_commit_signoff_required }
}

