#!/usr/bin/env bash

filename=./$(date '+%a %d %b %Y %r')

pg_dump > "$filename" && aws s3 cp "$filename" "s3://$AWS_STORAGE_BUCKET_NAME/backups/"