- dashboard: data_ingestion_and_health
  title: Data Ingestion and Health
  extends: data_ingestion_and_health_core
- dashboard: ioc_matches
  title: IOC Matches
  extends: ioc_matches_core
# - dashboard: main
#   title: Main
#   extends: new_main_core
- dashboard: rule_detections_drillthrough
  title: Rule Detection Details
  extends: rule_detections_drillthrough_core
- dashboard: user_sign_in_overview
  title: User Sign In Overview
  extends: user_sign_in_overview_core
- dashboard: user_sign_in_drillthrough
  title: User Sign-In Details
  extends: user_sign_in_drillthrough_core
- dashboard: country_sign_in_drill_through
  title: User Sign-In Details by Country
  extends: country_sign_in_drill_through_core
# WinEvent is commented out because not every client uses it. Remove comments to make available.
- dashboard: winevent_authentication
  title: WinEvent Authentication
  extends: winevent_authentication_core 
- dashboard: last_ingested
  title: Last Ingested
  extends: last_ingested_core
- dashboard: email_dashboard
  title: Email Dashboard
  extends: email_dashboard_core
# Cloud is commented out because not every client uses it. Remove comments to make available.
# - dashboard: cloud_dashboard
#   title: Cloud Dashboard
#   extends: cloud_dashboard_core
# Cofense is commented out because not every client uses it. Remove comments to make available.
#   dashboard: cofense_metrics
#   title: Cofense Metrics
#   extends: cofense_metrics_core
