#! /bin/sh

if [ -z "${GITHUB_TOKEN}" ]; then
  echo "GITHUB_TOKEN is required"
  exit 1
fi

curl -v -X POST \
  -H 'Accept: application/vnd.github.everest-preview+json' \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -d '{"event_type": "ssh", "client_payload": {}}' \
  https://api.github.com/repos/minimum2scp/gh-actions-example-01/dispatches

