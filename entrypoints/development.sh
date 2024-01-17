#!/bin/bash

rm -f /app/tmp/pids/server.pid
bin/setup && yarn install && bin/dev
exec "$@"