#!/usr/bin/env bash
COMMIT_ID=$(git rev-parse HEAD)
COMMIT_MSG=$2

if [ ! -n "$COMMIT_MSG" ]; then
  COMMIT_MSG="unknown"
fi

curl -XPOST -H 'content-type: application/json' -H 'x-dragonplus-pipeline: playable' https://pipeline-webhooks.dragonplus.com -d \
"
{
    \"head_commit\": {
        \"id\": \"$COMMIT_ID\",
        \"message\": \"$COMMIT_MSG\"
    },
    \"repository\": {
        \"ssh_url\": \"git@github.com:FlyDragonGO/CrossPromotionImages.git\"
    },
    \"ref\": \"refs/heads/master\"
}
"
