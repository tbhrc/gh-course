# GitHub Power-User Cheat Sheet

## Fast Mental Model

```text
Issue      = work
PR         = proposed change
Project    = portfolio/dashboard
Discussion = conversation before commitment
Actions    = automation
Rulesets   = policy
Markdown   = governed knowledge
Agent      = AI worker
```

## Search

Examples:

```text
repo:OWNER/REPO is:issue is:open
org:ORG is:issue is:open label:priority/p0
is:pr is:open review:required
in:title "versioning"
author:app/copilot is:pr
```

## CLI — Issues

```bash
gh issue list --repo OWNER/REPO --state open
gh issue view 123 --repo OWNER/REPO --comments
gh issue create --repo OWNER/REPO --title "..." --body-file issue.md
gh issue close 123 --repo OWNER/REPO --comment "Delivered in PR #..."
```

## Closing Keywords

```text
Closes #123
Fixes #123
Resolves #123
Closes OWNER/OTHER-REPO#45
```

Use only when merging should actually close the Issue.

## Projects

```bash
gh project list --owner ORG_OR_USER
gh project view <NUMBER> --owner ORG_OR_USER
gh project item-list <NUMBER> --owner ORG_OR_USER --format json
```

## Actions

```bash
gh workflow list --repo OWNER/REPO
gh workflow run WORKFLOW.yml --repo OWNER/REPO
gh run list --repo OWNER/REPO --limit 20
gh run view RUN_ID --repo OWNER/REPO --log-failed
```

## Pull Requests

```bash
gh pr create --fill
gh pr checks
gh pr diff
gh pr review --approve
gh pr merge --squash --delete-branch
```

## Releases

```bash
gh release list --repo OWNER/REPO
gh release view TAG --repo OWNER/REPO
gh release create TAG --repo OWNER/REPO --generate-notes
```

## API Escape Hatch

```bash
gh api repos/OWNER/REPO
gh api repos/OWNER/REPO/issues/123
gh api graphql -f query='query { viewer { login } }'
```

Prefer normal `gh` commands when available; use `gh api` when needed.

## Useful UI Shortcuts

- `/` — focus search on many GitHub pages.
- `.` — open repository in github.dev where supported.
- `t` — file finder in repository code view.
- `y` — convert file URL to a permalink at the current commit.
- `l` — jump to a line.
- `?` — show available shortcuts.

## Recommended `.github/` Baseline

```text
.github/
├── ISSUE_TEMPLATE/
├── workflows/
├── PULL_REQUEST_TEMPLATE.md
├── CODEOWNERS
├── dependabot.yml
├── copilot-instructions.md
├── instructions/
├── prompts/
└── agents/
```

## Fast Decision Table

| Situation | First move |
|---|---|
| New actionable work | Search, then create Issue |
| Big Issue | Add sub-issues |
| Blocked work | Record dependency |
| Work spans repos | Add to Project |
| Idea/question | Discussion |
| Change to repo | Pull Request |
| Repetitive manual action | Action |
| Repository convention | `.github/` / governed Markdown |
| Specialist recurring AI role | custom agent |
| External AI tools/data | MCP with least privilege |
| Default branch risk | ruleset + required checks |
| Shipped version | tag + Release |

## Do Not Forget

1. Search before creating.
2. Link instead of duplicate.
3. Use one source of truth per field.
4. Automate repetitive maintenance.
5. Keep permissions least-privilege.
6. Close with evidence.
7. Check GitHub-native capability before building custom infrastructure.