# This connection will be the same for every client because its our
# JIRA Spanner DB.
connection: "ticket_analytics_jira"

label: "CustomerName"

# include the Case Metrics Dashboard
include: "//ops_metrics_analytics_external/*.dashboard.lookml"
include: "//ops_metrics_analytics_external/explores/*.explore.lkml"


datagroup: ticket_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ticket_analytics_default_datagroup
