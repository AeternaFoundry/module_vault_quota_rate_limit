resource "vault_quota_rate_limit" "quota_rate_limits" {
  for_each = var.quota_rate_limits

  name           = each.value.name
  rate           = each.value.rate
  block_interval = each.value.block_interval
  group_by       = each.value.group_by
  inheritable    = each.value.inheritable
  interval       = each.value.interval
  namespace      = each.value.namespace
  path           = each.value.path
  role           = each.value.role
  secondary_rate = each.value.secondary_rate
}

