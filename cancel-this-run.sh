#!/bin/bash

cancel_this_run_url=https://api.github.com/repos/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID/cancel
echo "Should cancel this run: $SHOULD_CANCEL"
if [ "$SHOULD_CANCEL" = true ]
then
  echo $url
  curl -s -o /dev/null -w "%{http_code}" -X POST \
    -H 'Accept: application/vnd.github.v3+json' \
    -H "authorization: Bearer $GITHUB_TOKEN" \
    $cancel_this_run_url
fi
