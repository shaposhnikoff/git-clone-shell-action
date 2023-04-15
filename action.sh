#!/bin/sh

#set -eux
#git clone --progress --single-branch --branch "${INPUTS_BRANCH:-${GITHUB_REF##*/}}" "https://${GITHUB_REPOSITORY_OWNER}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" .

if jq -e . >/dev/null 2>&1 <<<"$json_string"; then
    echo "Parsed JSON successfully and got something other than false/null"
else
    echo "Failed to parse JSON, or got false/null"
fi
