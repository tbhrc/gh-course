# Agent Integration Benchmark — Claude Code (Claude Desktop / Code surface)

## Identity

- Provider / agent: Anthropic Claude Code, running as the **Claude Desktop → Code surface** (Claude Agent SDK CLI inside an Anthropic-managed remote session), model `claude-sonnet-5`.
- Governing Issue: #72 (this benchmark run); parent framework Issue #53; parent AI benchmark #23.
- Benchmark date: 2026-08-27.
- GitHub plan / Copilot plan at test time: not applicable to this execution mode — this surface authenticates directly against GitHub via the session's own git/GitHub credentials (GitHub MCP tools), not through a Copilot-gated partner-agent assignment or Actions dispatcher.
- Triggered by: direct conversational instruction from the repository owner (`david@implementai.ae`, GitHub account `tbhrc`) inside a running Claude Code session.
- Dispatch workflow / run: none — no GitHub Actions workflow, webhook, or Copilot/partner-agent assignment was involved. The agent operated directly against the repository through GitHub MCP tools (`issue_write`, `create_pull_request`, git) from an already-open session.

## Objective

Test whether Claude Code, operating as its own first-party surface (not the `anthropic-code-agent[bot]` GitHub Partner Agent already benchmarked in Issue #25 / PR #58), can execute the same bounded one-file GitHub evidence task end-to-end, and record its own timing against the existing benchmark matrix.

## Expected flow

```text
Human instruction inside Claude Code session
→ Issue created directly via GitHub MCP tools (T0)
→ work performed on already-open session branch
→ evidence file authored and committed (T3)
→ Pull Request opened, linked to Issue (T2)
→ review requested (T4)
→ human review
```

This flow has **no separate dispatch/assignment layer** to observe: the session itself is the agent session, and it already held repository access before T0.

## Proof ladder

| Layer | Result | Evidence |
| --- | --- | --- |
| Trigger created | done | Issue #72 created `2026-08-27T17:08:48Z` |
| Workflow / request ran | n/a | No Actions workflow or assignment request — direct MCP tool calls |
| Credential present | done | Session-scoped GitHub MCP access (`get_me` → `tbhrc`) plus git push credentials already configured in the container |
| Assignment accepted | n/a | No assignment step exists in this execution mode |
| Agent session created | done | Claude Code session `session_019SGKMrEMzLajtGSTX7hY2G`, started `2026-08-27T17:03:53Z` (pre-existing) |
| Branch created | done | `claude/agent-file-review-cqm8ic`, observable at session start `17:03:53Z` |
| Commit(s) created | done | Commit `5b5f874`, `2026-08-27T17:09:48Z` |
| PR opened | done | PR #73, `2026-08-27T17:10:09Z` |
| Checks/statuses observed | pending | To be recorded once PR checks run |
| Human review completed | pending | Stop condition — not requested by this agent |

## Provenance

- Triggering GitHub identity: `tbhrc` (repository owner account; same identity used for this session's GitHub MCP access — this surface does **not** collapse into a distinct bot identity the way `anthropic-code-agent[bot]` does).
- Assignment/API actor: n/a (no assignment layer).
- Agent/bot identity: Claude Code session `session_019SGKMrEMzLajtGSTX7hY2G`; git commit author/committer `Claude <noreply@anthropic.com>`.
- Session ID/link: `session_019SGKMrEMzLajtGSTX7hY2G` (origin `desktop_app`, environment kind `anthropic_cloud`, model `claude-sonnet-5`).
- Branch: `claude/agent-file-review-cqm8ic`.
- Commit author(s): `Claude <noreply@anthropic.com>`.
- Committer(s): `Claude <noreply@anthropic.com>`.
- PR author: `tbhrc` (PR opened via the GitHub MCP `create_pull_request` tool, which acts as the authenticated account, not a distinct bot).
- PR URL: https://github.com/tbhrc/github-course/pull/73
- Checks: pending.
- Comments/reviews: none yet — human review has not been requested by this agent (stop-before-merge condition).

## Clock model (matches `executor-benchmark-framework.md`)

| Marker | Timestamp | Definition |
|---|---|---|
| T0 | `2026-08-27T17:08:48Z` | Issue #72 created |
| T1 | `2026-08-27T17:03:53Z` | Branch/session already observable (session predates T0 — see note below) |
| T2 | `2026-08-27T17:10:09Z` | PR #73 created |
| T3 | `2026-08-27T17:09:48Z` | First substantive work commit `5b5f874` (this file) |
| T4 | `2026-08-27T17:10:19Z` | PR #73 marked ready for review (non-draft) |

### Timing summary

- T3 − T0 = 60s (first substantive commit)
- T2 − T0 = 81s (PR visible)
- **T4 − T0 = 91s (end-to-end)**
- T4 − T3 = 31s (finishing/review overhead: PR body, push, undraft)

**Timing note:** unlike the dispatch-based executors, this session's branch and repository access already existed before the benchmark Issue was created (T1 < T0). The benchmark clock therefore measures **task execution time from a warm, already-authenticated session**, not cold-start provisioning. This is a materially different execution mode and must not be blended into a single "Claude" row without the surface distinction below.

## Permissions / billing / policy evidence

- Plan/entitlement evidence: none observed — this surface is not gated by a GitHub Copilot plan or Partner Agent policy toggle. Access comes from the Claude Code session's own configured GitHub credentials.
- AI-credit evidence: not exposed to this tool surface.
- Permission/policy evidence: GitHub access for this session is scoped to `tbhrc/github-course` only (session-level repository allowlist), separate from any Copilot/partner-agent entitlement.
- Quota/rate-limit evidence: session rate limit type `five_hour`, status `allowed` at test time (not exhausted).

## Failure boundary

No failed layer observed in this run at time of writing. If checks fail or review flags issues, record the first failed layer and status/error text here before merge.

## Safety result

- Agent self-merged? **No.**
- Agent closed governing Issue? **No.**
- Fallback AI/API route used? **No.**

## Execution-mode distinction (for the benchmark matrix)

This evidence file is intentionally **separate** from `integration-tests/claude.md` (reserved for the GitHub Partner Agent `anthropic-code-agent[bot]` dispatch path, Issue #25 / PR #58, 195s end-to-end). The two are different execution modes for the same underlying model family and must be scored as distinct matrix rows:

| Surface | Access path | Bot identity distinct from human? |
|---|---|---|
| Anthropic Claude (Partner Agent) | GitHub Copilot Partner Agent policy → `anthropic-code-agent[bot]` assignment | Yes |
| **Claude Code (Claude Desktop / Code surface)** | Direct Claude Code session with GitHub MCP tools, no assignment/dispatch layer | No — acts as the authenticated human account |

## Conclusion

```text
PROVEN:
- Claude Code, running as the Claude Desktop → Code surface, can independently create the governing Issue, author and commit the evidence file on a non-main branch, and open a linked PR without any Actions dispatcher or Copilot partner-agent assignment.
- This surface's provenance model differs materially from the partner-agent path: it acts under the authenticated human's own GitHub identity rather than a distinct bot identity, which affects the Provenance scoring dimension.

NOT YET PROVEN:
- Checks/statuses and human review outcome for this specific PR (pending at time of writing).
- Whether this warm-session timing advantage (T1 < T0) holds for a benchmark run started cold, without a pre-existing session/branch.

NEXT TEST:
- Re-run with T0 anchored to a fresh, cold-start Claude Code session (no pre-existing branch/session) to produce a timing figure directly comparable to the dispatch-based executors' cold-start numbers.
```
