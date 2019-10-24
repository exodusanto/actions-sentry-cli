#!/bin/sh

set -e

# Capture output
output=$( sh -c "sentry-cli releases $*" )

# Preserve output for consumption by downstream actions
echo "$output" > "${HOME}/${GITHUB_ACTION}.${log}"


# Write output to STDOUT
echo "$output"