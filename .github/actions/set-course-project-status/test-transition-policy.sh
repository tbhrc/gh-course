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

apply_transition() {
  local current="$1"
  local target="$2"
  local allowed="$3"
  local no_op="$4"
  local decision

  decision="$(project_status_decision "$current" "$target" "$allowed" "$no_op")"
  case "$decision" in
    transition)
      printf '%s\n' "$target"
      ;;
    already|ignore)
      printf '%s\n' "$current"
      ;;
    *)
      printf 'FAIL: unexpected sequence decision=%s current=%s target=%s\n' "$decision" "$current" "$target" >&2
      exit 1
      ;;
  esac
}

assert_sequence_ends_in_review() {
  local order="$1"
  local state="Ready"

  case "$order" in
    push-then-review)
      state="$(apply_transition "$state" "In progress" "Backlog,Ready" "Review,Blocked,Done")"
      state="$(apply_transition "$state" "Review" "In progress,Ready,Backlog" "")"
      ;;
    review-then-push)
      state="$(apply_transition "$state" "Review" "In progress,Ready,Backlog" "")"
      state="$(apply_transition "$state" "In progress" "Backlog,Ready" "Review,Blocked,Done")"
      ;;
    *)
      printf 'FAIL: unknown sequence %s\n' "$order" >&2
      exit 1
      ;;
  esac

  if [ "$state" != "Review" ]; then
    printf 'FAIL: sequence=%s expected=Review actual=%s\n' "$order" "$state" >&2
    exit 1
  fi
  printf 'PASS: serialized %s -> Review\n' "$order"
}

assert_decision "" "transition"
assert_decision "Backlog" "transition"
assert_decision "Ready" "transition"
assert_decision "In progress" "already"
assert_decision "Review" "ignore"
assert_decision "Blocked" "ignore"
assert_decision "Done" "ignore"
assert_decision "Unexpected" "reject"

# GitHub Actions serializes all lifecycle mutations for the same Issue. Prove
# that either possible serialized push/PR ordering converges on Review.
assert_sequence_ends_in_review "push-then-review"
assert_sequence_ends_in_review "review-then-push"

printf 'Project lifecycle transition policy tests passed.\n'
