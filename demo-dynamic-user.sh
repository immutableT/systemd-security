#!/bin/bash

echo "Running as UID: $(id -u), GID: $(id -g)"

stat "${RUNTIME_DIRECTORY}"

stat "${CACHE_DIRECTORY}"
stat "${CONFIGURATION_DIRECTORY}"

echo "Mount info for /usr:"
findmnt --target /usr

echo "Attempting to execute /usr/bin/ls:"
/usr/bin/ping -c 1 www.google.com


