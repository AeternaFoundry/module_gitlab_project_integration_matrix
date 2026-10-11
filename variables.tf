variable "project_integration_matrices" {
  description = <<EOT
Map of project_integration_matrices, attributes below
Required:
    - project
    - room
    - token
Optional:
    - branches_to_be_notified
    - confidential_issues_events
    - confidential_note_events
    - hostname
    - issues_events
    - merge_requests_events
    - note_events
    - notify_only_broken_pipelines
    - pipeline_events
    - push_events
    - tag_push_events
    - use_inherited_settings
    - wiki_page_events
EOT

  type = map(object({
    project                      = string
    room                         = string
    token                        = string
    branches_to_be_notified      = optional(string)
    confidential_issues_events   = optional(bool)
    confidential_note_events     = optional(bool)
    hostname                     = optional(string)
    issues_events                = optional(bool)
    merge_requests_events        = optional(bool)
    note_events                  = optional(bool)
    notify_only_broken_pipelines = optional(bool)
    pipeline_events              = optional(bool)
    push_events                  = optional(bool)
    tag_push_events              = optional(bool)
    use_inherited_settings       = optional(bool)
    wiki_page_events             = optional(bool)
  }))
}

