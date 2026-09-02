#!/usr/bin/env bash

fetch_course_project_items_page() {
  local cursor="${1:-}"
  local query
  query='query($cursor: String) { user(login: "tbhrc") { projectV2(number: 1) { items(first: 100, after: $cursor) { nodes { id content { ... on Issue { number title state stateReason url } } fieldValueByName(name: "Status") { ... on ProjectV2ItemFieldSingleSelectValue { name } } } pageInfo { hasNextPage endCursor } } } } }'

  local payload
  payload="$(jq -cn --arg query "$query" --arg cursor "$cursor" '{query:$query, variables:{cursor:(if $cursor == "" then null else $cursor end)}}')"
  gh api graphql --input - --jq '.data.user.projectV2.items' <<<"$payload"
}

validate_course_project_items_page() {
  local page_json="$1"
  if ! jq -e '(.nodes | type == "array") and (.pageInfo.hasNextPage | type == "boolean")' >/dev/null <<<"$page_json"; then
    echo "Invalid Project items pagination response." >&2
    return 1
  fi
  if [ "$(jq -r '.pageInfo.hasNextPage' <<<"$page_json")" = "true" ] && [ -z "$(jq -r '.pageInfo.endCursor // empty' <<<"$page_json")" ]; then
    echo "Project items response hasNextPage=true but no endCursor." >&2
    return 1
  fi
}

find_course_project_item() {
  local issue_number="$1"
  local cursor=""
  local page_json item_json has_next

  while :; do
    if ! page_json="$(fetch_course_project_items_page "$cursor")"; then
      echo "Failed to fetch Project items page." >&2
      return 1
    fi
    validate_course_project_items_page "$page_json" || return 1

    item_json="$(jq -c --argjson issue "$issue_number" '.nodes[] | select(.content.number == $issue)' <<<"$page_json" | head -n1)"
    if [ -n "$item_json" ]; then
      printf '%s\n' "$item_json"
      return 0
    fi

    has_next="$(jq -r '.pageInfo.hasNextPage' <<<"$page_json")"
    if [ "$has_next" != "true" ]; then
      return 0
    fi
    cursor="$(jq -r '.pageInfo.endCursor' <<<"$page_json")"
  done
}

collect_course_project_items() {
  local cursor=""
  local page_json has_next
  local all_items='[]'

  while :; do
    if ! page_json="$(fetch_course_project_items_page "$cursor")"; then
      echo "Failed to fetch Project items page." >&2
      return 1
    fi
    validate_course_project_items_page "$page_json" || return 1

    all_items="$(jq -c --argjson page "$page_json" '. + $page.nodes' <<<"$all_items")"
    has_next="$(jq -r '.pageInfo.hasNextPage' <<<"$page_json")"
    if [ "$has_next" != "true" ]; then
      printf '%s\n' "$all_items"
      return 0
    fi
    cursor="$(jq -r '.pageInfo.endCursor' <<<"$page_json")"
  done
}
