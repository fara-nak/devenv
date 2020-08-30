#!/bin/bash

# Pull latest image from master branch
docker pull berrij/devenv:master

# Grant xhost access to root users in order to start x11 devices (r plots)
# Don't run in a codespaces environment see https://github.com/MicrosoftDocs/vscodespaces/issues/777
if [ "$CODESPACES" = false ]
then
    xhost local:root
fi