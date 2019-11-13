#! /bin/sh

# https://help.github.com/en/actions/automating-your-workflow-with-github-actions/events-that-trigger-workflows#external-events-repository_dispatch
# https://developer.github.com/v3/repos/#create-a-repository-dispatch-event

if [ -z "${GITHUB_TOKEN}" ]; then
  echo "GITHUB_TOKEN is required"
  exit 1
fi

curl -v -X POST \
  -H 'Accept: application/vnd.github.everest-preview+json' \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -d '{"event_type": "ssh", "client_payload": {}}' \
  https://api.github.com/repos/minimum2scp/gh-actions-example-01/dispatches

