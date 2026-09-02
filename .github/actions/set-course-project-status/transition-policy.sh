#!/usr/bin/env bash

# Pure Project Status decision helper used by the composite action and its
# deterministic tests. It does not call GitHub or mutate Project state.

project_status_csv_contains() {
  local csv="$1"
  local candidate="$2"
  local status
  local -a statuses=()

  IFS=',' read -ra statuses <<< "$csv"
  for status in "${statuses[@]}"; do
    status="${status#${status%%[![:space:]]*}}"
    status="${status%${status##*[![:space:]]}}"
    if [ "$candidate" = "$status" ]; then
      return 0
    fi
  done
  return 1
}

project_status_decision() {
  local current="$1"
  local target="$2"
  local allowed_current="$3"
  local no_op_current="$4"

  if [ "$current" = "$target" ]; then
    printf '%s\n' "already"
    return 0
  fi

  if [ -n "$current" ] && [ -n "$no_op_current" ] && project_status_csv_contains "$no_op_current" "$current"; then
    printf '%s\n' "ignore"
    return 0
  fi

  if [ -n "$current" ] && [ -n "$allowed_current" ] && ! project_status_csv_contains "$allowed_current" "$current"; then
    printf '%s\n' "reject"
    return 0
  fi

  printf '%s\n' "transition"
}
