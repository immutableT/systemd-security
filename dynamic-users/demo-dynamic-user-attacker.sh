#!/bin/bash

echo "Running as UID: $(id -u), GID: $(id -g)"

stat "${RUNTIME_DIRECTORY}"

stat "${CACHE_DIRECTORY}"
stat "${CONFIGURATION_DIRECTORY}"
stat "${STATE_DIRECTORY}"


echo "Attempting to read the cache directory of another service via symbolic link"
cat /var/cache/demo-dynamic-user/secret.txt

echo "Attempting to read the cache directory of another service directly"
ls /var/cache/private/demo-dynamic-user/secret.txt

