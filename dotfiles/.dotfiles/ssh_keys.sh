#!/usr/bin/env bash

# shellcheck disable=SC2126
VAR=$(ssh-add -l | grep -v "The agent has no identities." | wc -l | xargs)

if [[ ${VAR} -eq 0 ]]; then
  echo "[ SSH-KEY ${VAR} ]"
else
  echo "#[fg=colour9,bg=default,blink,bold][ SSH-KEY ${VAR} ]#[fg=colour7,bg=default]"
fi
