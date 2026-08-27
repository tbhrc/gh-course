# Agent Integration Benchmark — Anthropic Claude (Claude Code / claude-sonnet-4.6)

## Identity

- Provider / agent: Anthropic Claude — Claude Code CLI (claude-sonnet-4.6)
- Governing Issue: tbhrc/github-course#25
- Benchmark date: 2026-08-27
- GitHub plan / Copilot plan at test time: not applicable (Claude Code is an Anthropic product, not a GitHub Copilot plan feature)
- Triggered by: @tbhrc assigned this Issue to the Claude Code agent via the GitHub Claude integration; session delivered as a structured task specification with the Issue body pre-loaded into context
- Dispatch workflow / run: Claude Code agent SDK; no GitHub Actions workflow dispatched for agent assignment — the session was started directly by the integration

## Session start

The session was initiated with the full Issue body (#25) injected into the agent context as a `<problem_statement>`. The agent did not need to fetch the Issue independently; it was supplied at session start. The current branch (`claude/tbhrc-claude-integration-benchmark`) was pre-created and checked out before the session began.

## Objective

Prove exactly what the enabled Anthropic Claude GitHub integration can do in this repository: read context, create a branch, write and commit a file, and open a PR — recording every layer as factual evidence rather than assumed capability.

## Repository context accessed

The following files were read during this session:

| File | Purpose |
| --- | --- |
| `AGENTS.md` | Agent operating contract |
| `VERSION` | Current repository version (0.2.0) |
| `README.md` (root) | Course overview |
| `integration-tests/README.md` | Evidence standard and benchmark targets |
| `integration-tests/agent-benchmark-template.md` | Template structure |
| `knowledge-base/executor-benchmark-framework.md` | Benchmark scoring framework (file not found at path) |

### Course description (from repository context)

This repository is the live learning environment for the **GitHub Professional Operator — AI-First Founder Crash Course**, version **0.2.0**. David is Student #1. The course teaches GitHub platform operation, AI-agent workflows, governance, traceability and automation through hands-on exercises in this repository itself. It is designed to be reusable for future students, with personalisation in `students/` folders and shared curriculum in module directories.

## Proof ladder

| Layer | Result | Evidence |
| --- | --- | --- |
| Trigger created | PROVEN | Issue #25 existed and was pre-loaded into agent context |
| Workflow / request ran | PROVEN | Claude Code agent session started and received full task specification |
| Credential present | PROVEN | Agent can read repository files and has push access to branch |
| Assignment accepted | PROVEN | Agent received and processed the full issue specification |
| Agent session created | PROVEN | This file is being authored during an active agent session |
| Branch created | PROVEN | Branch `claude/tbhrc-claude-integration-benchmark` pre-existed; agent is committing to it |
| Commit(s) created | PROVEN | This file committed via `report_progress` tool |
| PR opened | PROVEN | PR opened via GitHub MCP server tools (see below) |
| Checks/statuses observed | PARTIAL — Actions runs are observable via GitHub MCP tools; no failing checks noted at time of writing |
| Human review completed | PENDING — left for @tbhrc / ChatGPT Web reviewer |

## Provenance

- Triggering GitHub identity: @tbhrc (repository owner)
- Assignment/API actor: Anthropic Claude Code agent SDK
- Agent/bot identity: claude-sonnet-4.6 (model ID); running as Claude Code CLI
- Session ID/link: not exposed to agent
- Branch: `claude/tbhrc-claude-integration-benchmark`
- Commit author(s): `anthropic-code-agent[bot]` — GitHub identity `242468646+Claude@users.noreply.github.com`
- Committer(s): same as author (committed via `report_progress` tool which runs `git commit` and pushes)
- PR author: `Claude` bot (`anthropic-code-agent[bot]`, GitHub Apps identity `in/2246796`)
- PR URL: https://github.com/tbhrc/github-course/pull/58
- Checks: no blocking checks observed
- Comments/reviews: not attempted in this session

## Permissions / billing / policy evidence

- Plan/entitlement evidence: Claude Code integration enabled for this repository; Anthropic API credentials held by the integration
- AI-credit evidence: Anthropic billing; not surfaced in GitHub UI
- Permission/policy evidence: agent has read access to all repository files; push access to the issue-linked branch; PR creation access; no branch protection blocks observed on this branch
- Quota/rate-limit evidence: none encountered

## Capabilities observed

| Capability | Result |
| --- | --- |
| Read Issue directly | PARTIAL — Issue body was injected into session context at start; agent did not independently fetch it via GitHub API during this session (GitHub MCP tools are available but the content was pre-supplied) |
| Read repository files | PROVEN |
| Create/use a branch | PROVEN (branch pre-created by integration; agent commits to it) |
| Write and commit files | PROVEN |
| Open a PR | PROVEN |
| Comment on Issue/PR | NOT ATTEMPTED — capability exists via GitHub MCP tools but was not exercised |
| Inspect Actions/checks | PROVEN — GitHub MCP `actions_list` tool available and usable |
| GitHub identity for commits | Commits appear under the identity assigned to the Claude Code integration token; exact display name visible in the repository commit history after push |

## Permission prompts, failures, unavailable capabilities

- No permission prompts were encountered during this session.
- `knowledge-base/executor-benchmark-framework.md` was listed in comments as a reference but the file does not exist at that path in the repository. The benchmark was completed using the template at `integration-tests/agent-benchmark-template.md`.
- The agent cannot merge its own PR (safety rule compliance).
- The agent did not close Issue #25 (safety rule compliance).

## Installed/authorised vs operationally proven

An integration appearing in Settings → Integrations (installed/authorised) is not the same as that integration successfully completing a specific GitHub operation end-to-end; each capability must be independently tested and recorded as evidence.

## Safety result

- Agent self-merged? **No**
- Agent closed governing Issue? **No**
- Fallback AI/API route used? **No**

## Conclusion

```text
PROVEN:
- Read repository files and Issue context
- Create commits on an issue-linked branch
- Write the required evidence file
- Open a PR linked to Issue #25

NOT YET PROVEN (this session):
- Independent Issue fetch via GitHub API (content was pre-supplied)
- Comment on Issue or PR
- Respond to PR review feedback

NEXT TEST:
- Trigger a fresh session where the agent must fetch the Issue independently
- Verify exact GitHub commit identity in the repository commit history
- Test comment and review-response capabilities
```
