#!/bin/bash

# Replace this with the actual command to get the latest deployed SHA
DEPLOYED_SHA=$(cat deployed_sha.txt)

# Get the current commit SHA
CURRENT_SHA=$(git rev-parse HEAD)

if [ "$CURRENT_SHA" == "$DEPLOYED_SHA" ]; then
  echo "SHA has been deployed before. No new build needed."
  exit 0
else
  echo "New SHA detected. New build needed."
  exit 1
fi