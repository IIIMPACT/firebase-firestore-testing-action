#!/bin/sh

# Exit if any subcommand fails
set -e

# Setup node modules if needed
if [ -e node_modules/.bin/jest ]; then
    setup=""
else
    echo "## Your environment is not ready yet. Installing modules..."
    if [ -f yarn.lock ]; then
        setup="yarn --non-interactive --silent --ignore-scripts --production=false &&"
    else
        setup="npm --prefix functions ci &&"
    fi
fi

echo "## Running Jest"
sh -c "$setup npm run --prefix functions test:ci"