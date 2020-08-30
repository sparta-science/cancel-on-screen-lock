#!/bin/bash

url=https://api.github.com/repos/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID/cancel
echo "Should cancel this run: $CANCEL"
echo $url
curl -s -o /dev/null -w "%{http_code}" -X POST -H 'Accept: application/vnd.github.v3+json' -H "authorization: Bearer $GITHUB_TOKEN" $url
