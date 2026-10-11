output "oncall_schedules_id" {
  description = "Map of id values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no id are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oncall_schedules_enable_web_overrides" {
  description = "Map of enable_web_overrides values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no enable_web_overrides are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.enable_web_overrides if v.enable_web_overrides != null }
}
output "oncall_schedules_ical_url_overrides" {
  description = "Map of ical_url_overrides values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no ical_url_overrides are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.ical_url_overrides if v.ical_url_overrides != null && length(v.ical_url_overrides) > 0 }
}
output "oncall_schedules_ical_url_primary" {
  description = "Map of ical_url_primary values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no ical_url_primary are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.ical_url_primary if v.ical_url_primary != null && length(v.ical_url_primary) > 0 }
}
output "oncall_schedules_name" {
  description = "Map of name values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no name are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "oncall_schedules_shifts" {
  description = "Map of shifts values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no shifts are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.shifts if v.shifts != null && length(v.shifts) > 0 }
}
output "oncall_schedules_slack" {
  description = "Map of slack values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no slack are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => one(v.slack) if v.slack != null && length(v.slack) > 0 }
}
output "oncall_schedules_team_id" {
  description = "Map of team_id values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no team_id are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "oncall_schedules_time_zone" {
  description = "Map of time_zone values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no time_zone are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}
output "oncall_schedules_type" {
  description = "Map of type values across all oncall_schedules, keyed the same as var.oncall_schedules except keys with no type are omitted"
  value       = { for k, v in grafana_oncall_schedule.oncall_schedules : k => v.type if v.type != null && length(v.type) > 0 }
}

