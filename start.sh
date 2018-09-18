#!/usr/bin/env bash

printenv | sed 's/^\(.*\)$/export \1/g' > /project_env.sh \
&& cron \
&& tail -f /var/log/cron.log
