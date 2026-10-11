resource "grafana_oncall_schedule" "oncall_schedules" {
  for_each = var.oncall_schedules

  name                 = each.value.name
  type                 = each.value.type
  enable_web_overrides = each.value.enable_web_overrides
  ical_url_overrides   = each.value.ical_url_overrides
  ical_url_primary     = each.value.ical_url_primary
  shifts               = each.value.shifts
  team_id              = each.value.team_id
  time_zone            = each.value.time_zone

  dynamic "slack" {
    for_each = each.value.slack != null ? [each.value.slack] : []
    content {
      channel_id    = slack.value.channel_id
      user_group_id = slack.value.user_group_id
    }
  }
}

