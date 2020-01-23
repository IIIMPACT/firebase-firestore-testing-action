#!/bin/sh -l

set -e

npm i -g npm

npm ci

npm run test:ci

echo 'Running!'