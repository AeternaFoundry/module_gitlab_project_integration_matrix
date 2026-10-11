resource "gitlab_project_integration_matrix" "project_integration_matrices" {
  for_each = var.project_integration_matrices

  project                      = each.value.project
  room                         = each.value.room
  token                        = each.value.token
  branches_to_be_notified      = each.value.branches_to_be_notified
  confidential_issues_events   = each.value.confidential_issues_events
  confidential_note_events     = each.value.confidential_note_events
  hostname                     = each.value.hostname
  issues_events                = each.value.issues_events
  merge_requests_events        = each.value.merge_requests_events
  note_events                  = each.value.note_events
  notify_only_broken_pipelines = each.value.notify_only_broken_pipelines
  pipeline_events              = each.value.pipeline_events
  push_events                  = each.value.push_events
  tag_push_events              = each.value.tag_push_events
  use_inherited_settings       = each.value.use_inherited_settings
  wiki_page_events             = each.value.wiki_page_events
}

