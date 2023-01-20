# This connection will be the same for every client because its our

# rulesDB in  Spanner DB.
connection: "mitre_spanner"

label: "CustomerName"

# include the Case Metrics Dashboard
include: "//mitre_metrics/*.dashboard.lookml"
include: "//mitre_metrics/explores/*.explore.lkml"


datagroup: mitre_rules_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mitre_rules_default_datagroup
