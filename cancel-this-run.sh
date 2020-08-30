#!/bin/bash

env
url=https://api.github.com/repos/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID/cancel
echo $url
curl -X POST -H 'Accept: application/vnd.github.v3+json' $url
