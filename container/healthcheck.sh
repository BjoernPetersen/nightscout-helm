#!/usr/bin/env sh

set -eux -o pipefail

content_type=$(curl -sSI -w '%{content_type}' -H 'Accept: application/json' 'http://localhost:1337/api/v1/status')

if [[ "$content_type" == "application/json" ]]
then
  exit 0
else
  exit 1
fi
