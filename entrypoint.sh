#!/bin/sh

# Exit if any subcommand fails
set -e

if [ -z "$FIREBASE_TOKEN" ]; then
    echo "FIREBASE_TOKEN is required to run commands with the firebase cli"
    exit 126
fi

# Setup node modules if needed
if [ -e node_modules/.bin/jest ]; then
    setup=""
else
    echo "## Your environment is not ready yet. Installing modules..."
    if [ -f yarn.lock ]; then
        setup="yarn --non-interactive --silent --ignore-scripts --production=false &&"
    else
        setup="npm --add-python-to-path='true' --prefix functions ci -f &&"
    fi
fi

sh -c "firebase $*"
echo "## Running Jest"
sh -c "$setup npm run --prefix functions test:ci"