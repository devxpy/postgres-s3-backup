#!/usr/bin/env bash

filename=./$(date '+%a %W %b %Y %X')

pg_dump -h $DB_HOST -p $DB_PORT -U $DB_USER $DB_NAME > "$filename" \
&& aws s3 cp "$filename" "s3://$AWS_STORAGE_BUCKET_NAME/backups/"