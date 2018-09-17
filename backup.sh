#!/usr/bin/env bash

filename=./$(date '+%a %W %b %Y %X')

pg_dump dbname > "$filename" && aws s3 cp "$filename" s3://saral-data-bucket/backups/