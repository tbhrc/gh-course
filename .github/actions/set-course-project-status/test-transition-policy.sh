#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=transition-policy.sh
source "$SCRIPT_DIR/transition-policy.sh"

ALLOWED="Backlog,Ready"
NO_OP="Review,Blocked,Done"
TARGET="In progress"

assert_decision() {
  local current="$1"
  local expected="$2"
  local actual

  actual="$(project_status_decision "$current" "$TARGET" "$ALLOWED" "$NO_OP")"
  if [ "$actual" != "$expected" ]; then
    printf 'FAIL: current=%q expected=%s actual=%s\n' "$current" "$expected" "$actual" >&2
    exit 1
  fi
  printf 'PASS: current=%q -> %s\n' "$current" "$actual"
}

assert_decision "" "transition"
assert_decision "Backlog" "transition"
assert_decision "Ready" "transition"
assert_decision "In progress" "already"
assert_decision "Review" "ignore"
assert_decision "Blocked" "ignore"
assert_decision "Done" "ignore"
assert_decision "Unexpected" "reject"

printf 'Project lifecycle transition policy tests passed.\n'
