# The connection that the client will use from within `Admin` -> `Connections`
connection: "CLIENTCONNECTIONNAME"

# The shown name under Explore, use this to properly display the clients name
label: "CLIENT NAME FULL"

# Custom Dashboards
include: "/*.dashboard.lookml"  # include all dashboards in the root folder in this project

# chronicle-siem-base Content
include: "//chronicle-siem-base/Views/*.view.lkml"
include: "//chronicle-siem-base/Explores/*.explore.lkml"
include: "//chronicle-siem-base/*.dashboard.lookml"

datagroup: cnap_default_datagroup {
  #sql_trigger: SELECT COUNT(*) FROM ${TABLE} ;;
  max_cache_age: "24 hours"
}

persist_with: cnap_default_datagroup

### Shown
explore: ingestion_stats {
  label: "Ingestion Stats"
  description: "Explore based on the ingestion_stats table"
  extends: [ingestion_stats_core]
}

explore: ioc_matches {
  label: "IOC Matches"
  description: "Explore based on the ioc_matches table"
  extends: [ioc_matches_core]
}

explore: rule_detections {
  label: "Rule Detections"
  description: "Explore based on the rule_detections table"
  extends: [rule_detections_core]
}

explore: udm_events {
  label: "UDM Events"
  description: "Explore based on the udm_events table"
  extends: [udm_events_core]
}

explore: udm_events_aggregates {
  label: "UDM Event Aggregates"
  description: "Explore based on the udm_events_aggregates table"
  extends: [udm_events_aggregates_core]
}

explore: udm_enum_value_to_name_mapping {
  label: "UDM Enum Value to Name Mapping"
  description: "This contains the mappings of Enum int to String for UDM data types and others"
  extends: [udm_enum_value_to_name_mapping_core]
}

### Derived Tables
explore: user_rule_detections_with_udm_events {
  label: "User Rule Detections with UDM Events"
  description: "Explore based on a derived table from UDM Events"
  extends: [user_rule_detections_with_udm_events_core]
}

explore: user_login_source_geo_ip {
  label: "User Login Source Geo IP"
  description: "Explore based on a derived table from UDM Events"
  extends: [user_login_source_geo_ip_core]
}


explore: user_login_detail_geo_ip {
  label: "User Login Detail Geo IP"
  description: "Explore based on a derived table from UDM Events"
  extends: [user_login_detail_geo_ip_core]
}

explore: destination_geo_ip {
  label: "Destination Geo IP"
  description: "Explore based on a derived table from UDM Events"
  extends: [destination_geo_ip_core]
}

### Hidden
explore: global_threat_map_ioc {
  label: "Global Threat Map IOC"
  description: "This is used to create a Looker Map"
  extends: [global_threat_map_ioc_core]
  hidden: yes
}

explore: asset_rule_detections_with_udm_events {
  label: "Asset Rule Detections with UDM Events"
  description: "This is unused. IDK why chronicle has it in code."
  extends: [asset_rule_detections_with_udm_events_core]
  hidden: yes
}

explore: email_geo {
  label: "IP Locations for Email"
  description: "Explore based on a derived table from UDM Events"
  extends: [email_geo_core]
  hidden: yes
}