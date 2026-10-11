output "security_monitoring_rules_id" {
  description = "Map of id values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no id are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_monitoring_rules_calculated_field" {
  description = "Map of calculated_field values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no calculated_field are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.calculated_field if v.calculated_field != null && length(v.calculated_field) > 0 }
}
output "security_monitoring_rules_case" {
  description = "Map of case values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no case are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.case if v.case != null && length(v.case) > 0 }
}
output "security_monitoring_rules_effective_tags" {
  description = "Map of effective_tags values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no effective_tags are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.effective_tags if v.effective_tags != null && length(v.effective_tags) > 0 }
}
output "security_monitoring_rules_enabled" {
  description = "Map of enabled values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no enabled are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.enabled if v.enabled != null }
}
output "security_monitoring_rules_filter" {
  description = "Map of filter values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no filter are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "security_monitoring_rules_group_signals_by" {
  description = "Map of group_signals_by values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no group_signals_by are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.group_signals_by if v.group_signals_by != null && length(v.group_signals_by) > 0 }
}
output "security_monitoring_rules_has_extended_title" {
  description = "Map of has_extended_title values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no has_extended_title are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.has_extended_title if v.has_extended_title != null }
}
output "security_monitoring_rules_message" {
  description = "Map of message values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no message are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.message if v.message != null && length(v.message) > 0 }
}
output "security_monitoring_rules_name" {
  description = "Map of name values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no name are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "security_monitoring_rules_options" {
  description = "Map of options values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no options are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.options if v.options != null && length(v.options) > 0 }
}
output "security_monitoring_rules_query" {
  description = "Map of query values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no query are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.query if v.query != null && length(v.query) > 0 }
}
output "security_monitoring_rules_reference_tables" {
  description = "Map of reference_tables values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no reference_tables are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.reference_tables if v.reference_tables != null && length(v.reference_tables) > 0 }
}
output "security_monitoring_rules_scheduling_options" {
  description = "Map of scheduling_options values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no scheduling_options are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.scheduling_options if v.scheduling_options != null && length(v.scheduling_options) > 0 }
}
output "security_monitoring_rules_signal_query" {
  description = "Map of signal_query values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no signal_query are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.signal_query if v.signal_query != null && length(v.signal_query) > 0 }
}
output "security_monitoring_rules_tags" {
  description = "Map of tags values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no tags are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "security_monitoring_rules_third_party_case" {
  description = "Map of third_party_case values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no third_party_case are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.third_party_case if v.third_party_case != null && length(v.third_party_case) > 0 }
}
output "security_monitoring_rules_type" {
  description = "Map of type values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no type are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.type if v.type != null && length(v.type) > 0 }
}
output "security_monitoring_rules_validate" {
  description = "Map of validate values across all security_monitoring_rules, keyed the same as var.security_monitoring_rules except keys with no validate are omitted"
  value       = { for k, v in datadog_security_monitoring_rule.security_monitoring_rules : k => v.validate if v.validate != null }
}

