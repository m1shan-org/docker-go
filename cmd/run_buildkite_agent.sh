#!/bin/bash

echo $BUILDKITE_AGENT_TOKEN
docker run \
    -v "/Users/mdavidenko/buildkite-secrets:/buildkite-secrets:ro" \
    -v "/Users/mdavidenko/buildkite-hooks/environment:/buildkite/hooks/environment" \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
    -d \
    -t \
    --name buildkite-agent \
    buildkite/agent:3 start --token "$BUILDKITE_AGENT_TOKEN"
