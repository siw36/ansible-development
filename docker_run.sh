#!/usr/bin/env bash
CODE=${HOME}/Code
docker run --rm --name ansible-development -d \
  -v ${CODE}:/home/${USER}/code \
  -v ${HOME}/.ssh:/home/${USER}/.ssh \
  --user $UID:$UID \
  ansible-development:latest
