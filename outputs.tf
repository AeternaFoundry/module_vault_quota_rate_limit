output "quota_rate_limits_id" {
  description = "Map of id values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no id are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.id if v.id != null && length(v.id) > 0 }
}
output "quota_rate_limits_block_interval" {
  description = "Map of block_interval values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no block_interval are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.block_interval if v.block_interval != null }
}
output "quota_rate_limits_group_by" {
  description = "Map of group_by values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no group_by are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.group_by if v.group_by != null && length(v.group_by) > 0 }
}
output "quota_rate_limits_inheritable" {
  description = "Map of inheritable values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no inheritable are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.inheritable if v.inheritable != null }
}
output "quota_rate_limits_interval" {
  description = "Map of interval values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no interval are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.interval if v.interval != null }
}
output "quota_rate_limits_name" {
  description = "Map of name values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no name are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.name if v.name != null && length(v.name) > 0 }
}
output "quota_rate_limits_namespace" {
  description = "Map of namespace values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no namespace are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "quota_rate_limits_path" {
  description = "Map of path values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no path are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.path if v.path != null && length(v.path) > 0 }
}
output "quota_rate_limits_rate" {
  description = "Map of rate values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no rate are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.rate if v.rate != null }
}
output "quota_rate_limits_role" {
  description = "Map of role values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no role are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.role if v.role != null && length(v.role) > 0 }
}
output "quota_rate_limits_secondary_rate" {
  description = "Map of secondary_rate values across all quota_rate_limits, keyed the same as var.quota_rate_limits except keys with no secondary_rate are omitted"
  value       = { for k, v in vault_quota_rate_limit.quota_rate_limits : k => v.secondary_rate if v.secondary_rate != null }
}

