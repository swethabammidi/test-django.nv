#!/bin/bash

# Define variables
export URL="http://34.75.155.70:8080/api/v2/import-scan/"
export TOKEN="e3fbd9dc2398f0e7aad4fefcc09a178793cba2df"
export SEVERITY="Info"
export #SCAN_TYPE="oast-results Scan"
export #FILE_PATH="oast-results.json"
export PRODUCT_NAME="sample-app"
export ENGAGEMENT_NAME="sample-api-import"
export ENGAGEMENT_ID="4"

curl -X 'POST' \
  'http://34.75.155.70:8080/api/v2/import-scan/' \
  -H 'accept: application/json' \
  -H 'Content-Type: multipart/form-data' \
  -H 'Authorization: Token e3fbd9dc2398f0e7aad4fefcc09a178793cba2df' \
  -F 'minimum_severity=Info' \
  -F 'active=true' \
  -F 'verified=true' \
  -F 'scan_type=Bandit Scan' \
  -F 'file=@bandit-results.json;type=application/json' \
  -F 'product_name=sample-app' \
  -F 'engagement_name=sample-api-import' \
  -F 'engagement=4' \
  -F 'auto_create_context=true' \
  -F 'close_old_findings=false' \
  -F 'close_old_findings_product_scope=false' \
  -F 'push_to_jira=false' \
  -F 'create_finding_groups_for_all_findings=true'
