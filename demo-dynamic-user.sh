#!/bin/bash

# Log UID and GID
echo "Running as UID: $(id -u), GID: $(id -g)"

# Show view of the filesystem
echo "View of the filesystem:"
ls /

# Attempt to write to systemd-managed directories
echo "Attempting to write to systemd-managed directories:"
echo "Writing to Cache Directory..."
echo "This is a cache file" > /var/cache/demo-dynamic-user/cache-file.txt && echo "Successfully wrote to cache directory" || echo "Failed to write to cache directory"

echo "Writing to Log Directory..."
echo "This is a log file" > /var/log/demo-dynamic-user/log-file.txt && echo "Successfully wrote to log directory" || echo "Failed to write to log directory"

echo "Writing to Runtime Directory..."
echo "This is a runtime file" > /run/demo-dynamic-user/runtime-file.txt && echo "Successfully wrote to runtime directory" || echo "Failed to write to runtime directory"

# Note: Configuration directory is typically read-only in this context
echo "Listing Configuration Directory contents..."
ls /etc/demo-dynamic-user/ && echo "Successfully accessed configuration directory" || echo "Failed to access configuration directory"

# Attempt to execute a binary outside its allowed paths
echo "Attempting to execute /usr/bin/ls:"
/usr/bin/ls / || echo "/usr/bin/ls execution failed due to isolation"
