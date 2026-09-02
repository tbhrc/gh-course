#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=project-items.sh
source "$SCRIPT_DIR/project-items.sh"

fetch_course_project_items_page() {
  local cursor="${1:-}"
  case "$cursor" in
    "")
      cat <<'JSON'
{"nodes":[{"id":"ITEM-1","content":{"number":1,"title":"First","state":"OPEN","stateReason":null,"url":"https://example/1"},"fieldValueByName":{"name":"Ready"}}],"pageInfo":{"hasNextPage":true,"endCursor":"page-2"}}
JSON
      ;;
    page-2)
      cat <<'JSON'
{"nodes":[{"id":"ITEM-130","content":{"number":130,"title":"Target","state":"OPEN","stateReason":null,"url":"https://example/130"},"fieldValueByName":{"name":"In progress"}},{"id":"ITEM-131","content":{"number":131,"title":"Later","state":"OPEN","stateReason":null,"url":"https://example/131"},"fieldValueByName":{"name":"Review"}}],"pageInfo":{"hasNextPage":false,"endCursor":null}}
JSON
      ;;
    *)
      echo "FAIL: unexpected extra page fetch cursor=$cursor" >&2
      return 1
      ;;
  esac
}

item="$(find_course_project_item 130)"
[ "$(jq -r '.id' <<<"$item")" = "ITEM-130" ] || { echo 'FAIL: target beyond page 1 not found.' >&2; exit 1; }
echo 'PASS: target beyond page 1 found.'

items="$(collect_course_project_items)"
[ "$(jq 'length' <<<"$items")" -eq 3 ] || { echo 'FAIL: list did not aggregate all pages.' >&2; exit 1; }
echo 'PASS: list aggregates all pages.'

fetch_course_project_items_page() {
  local cursor="${1:-}"
  if [ -z "$cursor" ]; then
    printf '%s\n' '{"nodes":[],"pageInfo":{"hasNextPage":true,"endCursor":"page-2"}}'
  else
    return 7
  fi
}

if collect_course_project_items >/dev/null 2>/tmp/project-pagination-error; then
  echo 'FAIL: pagination failure incorrectly returned success.' >&2
  exit 1
fi
grep -q 'Failed to fetch Project items page.' /tmp/project-pagination-error || { echo 'FAIL: pagination failure diagnostic missing.' >&2; exit 1; }
echo 'PASS: pagination failure fails closed.'

fetch_course_project_items_page() {
  printf '%s\n' '{"nodes":[],"pageInfo":{"hasNextPage":true,"endCursor":null}}'
}
if collect_course_project_items >/dev/null 2>/tmp/project-pagination-cursor-error; then
  echo 'FAIL: missing cursor incorrectly returned success.' >&2
  exit 1
fi
grep -q 'hasNextPage=true but no endCursor' /tmp/project-pagination-cursor-error || { echo 'FAIL: missing cursor diagnostic absent.' >&2; exit 1; }
echo 'PASS: malformed pagination response fails closed.'

printf 'Project item pagination tests passed.\n'
