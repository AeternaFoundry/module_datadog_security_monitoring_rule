resource "datadog_security_monitoring_rule" "security_monitoring_rules" {
  for_each = var.security_monitoring_rules

  message            = each.value.message
  name               = each.value.name
  enabled            = each.value.enabled
  group_signals_by   = each.value.group_signals_by
  has_extended_title = each.value.has_extended_title
  tags               = each.value.tags
  type               = each.value.type
  validate           = each.value.validate

  dynamic "calculated_field" {
    for_each = each.value.calculated_field != null ? each.value.calculated_field : []
    content {
      expression = calculated_field.value.expression
      name       = calculated_field.value.name
    }
  }

  dynamic "case" {
    for_each = each.value.case != null ? each.value.case : []
    content {
      dynamic "action" {
        for_each = case.value.action != null ? case.value.action : []
        content {
          dynamic "options" {
            for_each = action.value.options != null ? action.value.options : []
            content {
              duration = options.value.duration
            }
          }
          type = action.value.type
        }
      }
      condition     = case.value.condition
      name          = case.value.name
      notifications = case.value.notifications
      status        = case.value.status
    }
  }

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      action = filter.value.action
      query  = filter.value.query
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      dynamic "anomaly_detection_options" {
        for_each = options.value.anomaly_detection_options != null ? options.value.anomaly_detection_options : []
        content {
          bucket_duration          = anomaly_detection_options.value.bucket_duration
          detection_tolerance      = anomaly_detection_options.value.detection_tolerance
          instantaneous_baseline   = anomaly_detection_options.value.instantaneous_baseline
          learning_duration        = anomaly_detection_options.value.learning_duration
          learning_period_baseline = anomaly_detection_options.value.learning_period_baseline
        }
      }
      decrease_criticality_based_on_env = options.value.decrease_criticality_based_on_env
      detection_method                  = options.value.detection_method
      evaluation_window                 = options.value.evaluation_window
      dynamic "impossible_travel_options" {
        for_each = options.value.impossible_travel_options != null ? options.value.impossible_travel_options : []
        content {
          baseline_user_locations          = impossible_travel_options.value.baseline_user_locations
          baseline_user_locations_duration = impossible_travel_options.value.baseline_user_locations_duration
        }
      }
      keep_alive          = options.value.keep_alive
      max_signal_duration = options.value.max_signal_duration
      dynamic "new_value_options" {
        for_each = options.value.new_value_options != null ? options.value.new_value_options : []
        content {
          forget_after           = new_value_options.value.forget_after
          instantaneous_baseline = new_value_options.value.instantaneous_baseline
          learning_duration      = new_value_options.value.learning_duration
          learning_method        = new_value_options.value.learning_method
          learning_threshold     = new_value_options.value.learning_threshold
        }
      }
      dynamic "sequence_detection_options" {
        for_each = options.value.sequence_detection_options != null ? options.value.sequence_detection_options : []
        content {
          dynamic "step_transitions" {
            for_each = sequence_detection_options.value.step_transitions != null ? sequence_detection_options.value.step_transitions : []
            content {
              child             = step_transitions.value.child
              evaluation_window = step_transitions.value.evaluation_window
              parent            = step_transitions.value.parent
            }
          }
          dynamic "steps" {
            for_each = sequence_detection_options.value.steps != null ? sequence_detection_options.value.steps : []
            content {
              condition         = steps.value.condition
              evaluation_window = steps.value.evaluation_window
              name              = steps.value.name
            }
          }
        }
      }
      dynamic "third_party_rule_options" {
        for_each = options.value.third_party_rule_options != null ? options.value.third_party_rule_options : []
        content {
          default_notifications = third_party_rule_options.value.default_notifications
          default_status        = third_party_rule_options.value.default_status
          dynamic "root_query" {
            for_each = third_party_rule_options.value.root_query != null ? third_party_rule_options.value.root_query : []
            content {
              group_by_fields = root_query.value.group_by_fields
              query           = root_query.value.query
            }
          }
          signal_title_template = third_party_rule_options.value.signal_title_template
        }
      }
    }
  }

  dynamic "query" {
    for_each = each.value.query != null ? each.value.query : []
    content {
      dynamic "agent_rule" {
        for_each = query.value.agent_rule != null ? query.value.agent_rule : []
        content {
          agent_rule_id = agent_rule.value.agent_rule_id
          expression    = agent_rule.value.expression
        }
      }
      aggregation                  = query.value.aggregation
      data_source                  = query.value.data_source
      distinct_fields              = query.value.distinct_fields
      group_by_fields              = query.value.group_by_fields
      has_optional_group_by_fields = query.value.has_optional_group_by_fields
      indexes                      = query.value.indexes
      metric                       = query.value.metric
      metrics                      = query.value.metrics
      name                         = query.value.name
      query                        = query.value.query
    }
  }

  dynamic "reference_tables" {
    for_each = each.value.reference_tables != null ? each.value.reference_tables : []
    content {
      check_presence  = reference_tables.value.check_presence
      column_name     = reference_tables.value.column_name
      log_field_path  = reference_tables.value.log_field_path
      rule_query_name = reference_tables.value.rule_query_name
      table_name      = reference_tables.value.table_name
    }
  }

  dynamic "scheduling_options" {
    for_each = each.value.scheduling_options != null ? each.value.scheduling_options : []
    content {
      rrule    = scheduling_options.value.rrule
      start    = scheduling_options.value.start
      timezone = scheduling_options.value.timezone
    }
  }

  dynamic "signal_query" {
    for_each = each.value.signal_query != null ? each.value.signal_query : []
    content {
      aggregation            = signal_query.value.aggregation
      correlated_by_fields   = signal_query.value.correlated_by_fields
      correlated_query_index = signal_query.value.correlated_query_index
      name                   = signal_query.value.name
      rule_id                = signal_query.value.rule_id
    }
  }

  dynamic "third_party_case" {
    for_each = each.value.third_party_case != null ? each.value.third_party_case : []
    content {
      name          = third_party_case.value.name
      notifications = third_party_case.value.notifications
      query         = third_party_case.value.query
      status        = third_party_case.value.status
    }
  }
}

