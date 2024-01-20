#!/bin/bash

rm -f /app/tmp/pids/server.pid
bundler && rake db:create db:migrate && yarn install && bin/dev
exec "$@"