variable "security_monitoring_rules" {
  description = <<EOT
Map of security_monitoring_rules, attributes below
Required:
    - message
    - name
Optional:
    - enabled
    - group_signals_by
    - has_extended_title
    - tags
    - type
    - validate
    - calculated_field (block):
        - expression (required)
        - name (required)
    - case (block):
        - action (optional, block):
            - options (optional, block):
                - duration (optional)
            - type (required)
        - condition (optional)
        - name (optional)
        - notifications (optional)
        - status (required)
    - filter (block):
        - action (required)
        - query (required)
    - options (block):
        - anomaly_detection_options (optional, block):
            - bucket_duration (optional)
            - detection_tolerance (optional)
            - instantaneous_baseline (optional)
            - learning_duration (optional)
            - learning_period_baseline (optional)
        - decrease_criticality_based_on_env (optional)
        - detection_method (optional)
        - evaluation_window (optional)
        - impossible_travel_options (optional, block):
            - baseline_user_locations (optional)
            - baseline_user_locations_duration (optional)
        - keep_alive (optional)
        - max_signal_duration (optional)
        - new_value_options (optional, block):
            - forget_after (required)
            - instantaneous_baseline (optional)
            - learning_duration (optional)
            - learning_method (optional)
            - learning_threshold (optional)
        - sequence_detection_options (optional, block):
            - step_transitions (optional, block):
                - child (required)
                - evaluation_window (optional)
                - parent (required)
            - steps (optional, block):
                - condition (required)
                - evaluation_window (optional)
                - name (required)
        - third_party_rule_options (optional, block):
            - default_notifications (optional)
            - default_status (required)
            - root_query (optional, block):
                - group_by_fields (optional)
                - query (required)
            - signal_title_template (optional)
    - query (block):
        - agent_rule (optional, block):
            - agent_rule_id (required)
            - expression (required)
        - aggregation (optional)
        - data_source (optional)
        - distinct_fields (optional)
        - group_by_fields (optional)
        - has_optional_group_by_fields (optional)
        - indexes (optional)
        - metric (optional)
        - metrics (optional)
        - name (optional)
        - query (required)
    - reference_tables (block):
        - check_presence (required)
        - column_name (required)
        - log_field_path (required)
        - rule_query_name (required)
        - table_name (required)
    - scheduling_options (block):
        - rrule (required)
        - start (required)
        - timezone (required)
    - signal_query (block):
        - aggregation (optional)
        - correlated_by_fields (optional)
        - correlated_query_index (optional)
        - name (optional)
        - rule_id (required)
    - third_party_case (block):
        - name (optional)
        - notifications (optional)
        - query (optional)
        - status (required)
EOT

  type = map(object({
    message            = string
    name               = string
    enabled            = optional(bool)
    group_signals_by   = optional(list(string))
    has_extended_title = optional(bool)
    tags               = optional(set(string))
    type               = optional(string)
    validate           = optional(bool)
    calculated_field = optional(list(object({
      expression = string
      name       = string
    })))
    case = optional(list(object({
      action = optional(list(object({
        options = optional(list(object({
          duration = optional(number)
        })))
        type = string
      })))
      condition     = optional(string)
      name          = optional(string)
      notifications = optional(list(string))
      status        = string
    })))
    filter = optional(list(object({
      action = string
      query  = string
    })))
    options = optional(list(object({
      anomaly_detection_options = optional(list(object({
        bucket_duration          = optional(number)
        detection_tolerance      = optional(number)
        instantaneous_baseline   = optional(bool)
        learning_duration        = optional(number)
        learning_period_baseline = optional(number)
      })))
      decrease_criticality_based_on_env = optional(bool)
      detection_method                  = optional(string)
      evaluation_window                 = optional(number)
      impossible_travel_options = optional(list(object({
        baseline_user_locations          = optional(bool)
        baseline_user_locations_duration = optional(number)
      })))
      keep_alive          = optional(number)
      max_signal_duration = optional(number)
      new_value_options = optional(list(object({
        forget_after           = number
        instantaneous_baseline = optional(bool)
        learning_duration      = optional(number)
        learning_method        = optional(string)
        learning_threshold     = optional(number)
      })))
      sequence_detection_options = optional(list(object({
        step_transitions = optional(list(object({
          child             = string
          evaluation_window = optional(number)
          parent            = string
        })))
        steps = optional(list(object({
          condition         = string
          evaluation_window = optional(number)
          name              = string
        })))
      })))
      third_party_rule_options = optional(list(object({
        default_notifications = optional(list(string))
        default_status        = string
        root_query = optional(list(object({
          group_by_fields = optional(list(string))
          query           = string
        })))
        signal_title_template = optional(string)
      })))
    })))
    query = optional(list(object({
      agent_rule = optional(list(object({
        agent_rule_id = string
        expression    = string
      })))
      aggregation                  = optional(string)
      data_source                  = optional(string)
      distinct_fields              = optional(list(string))
      group_by_fields              = optional(list(string))
      has_optional_group_by_fields = optional(bool)
      indexes                      = optional(list(string))
      metric                       = optional(string)
      metrics                      = optional(list(string))
      name                         = optional(string)
      query                        = string
    })))
    reference_tables = optional(list(object({
      check_presence  = bool
      column_name     = string
      log_field_path  = string
      rule_query_name = string
      table_name      = string
    })))
    scheduling_options = optional(list(object({
      rrule    = string
      start    = string
      timezone = string
    })))
    signal_query = optional(list(object({
      aggregation            = optional(string)
      correlated_by_fields   = optional(list(string))
      correlated_query_index = optional(string)
      name                   = optional(string)
      rule_id                = string
    })))
    third_party_case = optional(list(object({
      name          = optional(string)
      notifications = optional(list(string))
      query         = optional(string)
      status        = string
    })))
  }))
}

