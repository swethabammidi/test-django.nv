#!/bin/bash

# Define variables
URL="http://34.75.155.70:8080/api/v2/import-scan/"
TOKEN="e3fbd9dc2398f0e7aad4fefcc09a178793cba2df"
SEVERITY="Info"
#SCAN_TYPE="oast-results Scan"
#FILE_PATH="oast-results.json"
PRODUCT_NAME="sample-app"
ENGAGEMENT_NAME="sample-api-import"
ENGAGEMENT_ID="4"

curl -X 'POST' \
  '${URL}' \
  -H 'accept: application/json' \
  -H 'Content-Type: multipart/form-data' \
  -H 'Authorization: Token ${TOKEN}' \
  -F 'minimum_severity=${SEVERITY}' \
  -F 'active=true' \
  -F 'verified=true' \
  -F 'scan_type=Bandit Scan' \
  -F 'file=@bandit-results.json;type=application/json' \
  -F 'product_name=${PRODUCT_NAME}' \
  -F 'engagement_name=${ENGAGEMENT_NAME}' \
  -F 'engagement=${ENGAGEMENT_ID}' \
  -F 'auto_create_context=true' \
  -F 'close_old_findings=false' \
  -F 'close_old_findings_product_scope=false' \
  -F 'push_to_jira=false' \
  -F 'create_finding_groups_for_all_findings=true'
