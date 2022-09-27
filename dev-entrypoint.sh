#!/usr/bin/env bash
set -e

# Remove a potentially pre-existing server.pid for Rails
rm -f /lms-system/tmp/pids/server.pid

# Then exec the container's main process
exec "$@"