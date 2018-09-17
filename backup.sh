#!/usr/bin/env bash

filename=./$(env TZ=Asia/Kolkata date '+%a %d %b %Y %r')

printenv

echo "creating sqldump at '$filename'..."

pg_dump > "$filename" && aws s3 cp "$filename" "s3://$AWS_STORAGE_BUCKET_NAME/backups/"