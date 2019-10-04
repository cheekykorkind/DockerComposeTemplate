#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

chown -R ${UID}:${GID} .

# For 'Your Yarn packages are out of date! Please run "yarn install --check-files" to update'
yarn install --check-files

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"