#!/bin/bash
set -e

# set permission for host volumes space
chown -R ${UID}:${GID} .

# set permission for web container work on db container
chmod 777 -R /myapp/tmp/db/

# For 'Your Yarn packages are out of date! Please run "yarn install --check-files" to update'
yarn install --check-files

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"