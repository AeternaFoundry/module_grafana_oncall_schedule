variable "oncall_schedules" {
  description = <<EOT
Map of oncall_schedules, attributes below
Required:
    - name
    - type
Optional:
    - enable_web_overrides
    - ical_url_overrides
    - ical_url_primary
    - shifts
    - team_id
    - time_zone
    - slack (block):
        - channel_id (optional)
        - user_group_id (optional)
EOT

  type = map(object({
    name                 = string
    type                 = string
    enable_web_overrides = optional(bool)
    ical_url_overrides   = optional(string)
    ical_url_primary     = optional(string)
    shifts               = optional(set(string))
    team_id              = optional(string)
    time_zone            = optional(string)
    slack = optional(object({
      channel_id    = optional(string)
      user_group_id = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.oncall_schedules : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

