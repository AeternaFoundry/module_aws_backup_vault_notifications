output "backup_vault_notifications_id" {
  description = "Map of id values across all backup_vault_notifications, keyed the same as var.backup_vault_notifications"
  value       = { for k, v in aws_backup_vault_notifications.backup_vault_notifications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_vault_notifications_backup_vault_arn" {
  description = "Map of backup_vault_arn values across all backup_vault_notifications, keyed the same as var.backup_vault_notifications"
  value       = { for k, v in aws_backup_vault_notifications.backup_vault_notifications : k => v.backup_vault_arn if v.backup_vault_arn != null && length(v.backup_vault_arn) > 0 }
}
output "backup_vault_notifications_backup_vault_events" {
  description = "Map of backup_vault_events values across all backup_vault_notifications, keyed the same as var.backup_vault_notifications"
  value       = { for k, v in aws_backup_vault_notifications.backup_vault_notifications : k => v.backup_vault_events if v.backup_vault_events != null && length(v.backup_vault_events) > 0 }
}
output "backup_vault_notifications_backup_vault_name" {
  description = "Map of backup_vault_name values across all backup_vault_notifications, keyed the same as var.backup_vault_notifications"
  value       = { for k, v in aws_backup_vault_notifications.backup_vault_notifications : k => v.backup_vault_name if v.backup_vault_name != null && length(v.backup_vault_name) > 0 }
}
output "backup_vault_notifications_region" {
  description = "Map of region values across all backup_vault_notifications, keyed the same as var.backup_vault_notifications"
  value       = { for k, v in aws_backup_vault_notifications.backup_vault_notifications : k => v.region if v.region != null && length(v.region) > 0 }
}
output "backup_vault_notifications_sns_topic_arn" {
  description = "Map of sns_topic_arn values across all backup_vault_notifications, keyed the same as var.backup_vault_notifications"
  value       = { for k, v in aws_backup_vault_notifications.backup_vault_notifications : k => v.sns_topic_arn if v.sns_topic_arn != null && length(v.sns_topic_arn) > 0 }
}

