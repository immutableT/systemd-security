#!/bin/bash

echo "Running as UID: $(id -u), GID: $(id -g)"

stat "${RUNTIME_DIRECTORY}"

stat "${CACHE_DIRECTORY}"
stat "${CONFIGURATION_DIRECTORY}"
stat "${STATE_DIRECTORY}"

echo "Mount info for /usr:"
findmnt --target /usr

touch "${CACHE_DIRECTORY}/secret.txt"

touch /var/shared/hello.txt
touch /var/test/hello.txt



