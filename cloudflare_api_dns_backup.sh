#!/bin/bash

# API Key with DNS Zone read rights
APIKEY=""
# DNS Zone ID, Cloudflare DNS Zone Overview
ZONE=""
# Path to where the Export of your DNS Zone should be saved
PATHCONFIG=""

# URL to Cloudflare API
HOST="api.cloudflare.com"
# Variable to Add to Name for unique naming for daily export
DATE=$(date +%Y%m%d) 


# make the api request for config as xml and alias as json
curl -X GET "https://${HOST}/client/v4/zones/${ZONE}/dns_records/export" -H "Authorization: Bearer ${APIKEY}" -H "Content-Type: application/json" --create-dirs -o "${PATHCONFIG}"/cloudflare/cloudflare-dnszone-"${DATE}".txt

# check the backup destination for backups older then 14 days
find "${PATHCONFIG}" -type f -name cloudflare\*.txt -mtime +14 -delete
