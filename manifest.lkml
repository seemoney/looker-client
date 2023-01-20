# The looker project name, you can find it in the top left corner or from within the url after `/projects`
project_name: "CLIENTNAME"

local_dependency: {
  project: "chronicle-siem-base"

  # Same as the project_name that we set above
  override_constant: CLIENT_PROJECT_NAME {
    value: "CLIENTNAME"
  }

  # The connection name that this client will use from the `Admin` -> `Connections` page
  override_constant: CONNECTION_NAME {
    value: "CLIENTCONNECTIONNAME"
  }

  # Replace the value `CLIENTBQPROJECTNAME` in this with the value from within the connection under `Project Name` which was set from the BQ access key under the value `project_id`
  override_constant: DATASET_PROJECT {
    value: "CLIENTBQPROJECTNAME"
  }

  # Replace this value with the url of the chronicle instance, eg https://fishtech.backstory.chronicle.security
  override_constant: CHRONICLE_URL {
    value: "CLIENTCHRONICLEURL"
  }
}

local_dependency: {
  project: "ops_metrics_analytics_external"

  override_constant: JIRA_ORG_ID {
    value: "ID"
  }

  override_constant: SIEMPLIFY_ENVIRONMENT_NAME {
    value: "Env"
  }

  override_constant: CLIENT_PROJECT_NAME {
    value: "client_project_name"
  }
}

local_dependency: {
  project: "mitre_metrics"

  override_constant: TENANT_REF {
    value: "<value from CMS tenant ref>"
  }

  override_constant: CLIENT_PROJECT_NAME {
    value: "<value from client_project_name already in manifest file>"
  }
}
