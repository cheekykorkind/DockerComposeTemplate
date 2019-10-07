#!/bin/sh

UID=$(id -u $USER)
GID=$(id -g $USER)
UNAME=$(echo "$USER")

touch .env
echo "UID=${UID}" >> .env
echo "GID=${GID}" >> .env
echo "UNAME=${UNAME}" >> .env