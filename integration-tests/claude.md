# Agent Integration Benchmark — Anthropic Claude Partner Agent (claude-sonnet-4.6)

## Identity

- Provider / agent: Anthropic Claude — GitHub Partner Agent (claude-sonnet-4.6 underlying model)
- Governing Issue: tbhrc/github-course#25
- Benchmark date: 2026-08-27
- Triggered by: @tbhrc assigned this Issue to `anthropic-code-agent[bot]`; GitHub Actions run `33083260139` completed the assignment workflow and delivered the Issue specification to the session.
- Dispatch workflow / run: `33083260139`

## Session start

GitHub Actions run `33083260139` deterministically assigned `anthropic-code-agent[bot]` to Issue #25. The full Issue body was injected into the agent context. The branch `claude/tbhrc-claude-integration-benchmark` was pre-created and checked out before execution.

## Objective

Prove exactly what the enabled Anthropic Claude GitHub Partner Agent integration can do in this repository: read context, use a branch, write and commit a file, and open a PR — recording every layer as factual evidence rather than assumed capability.

## Repository context accessed

The session read `AGENTS.md`, `VERSION`, root `README.md`, `integration-tests/README.md`, and `integration-tests/agent-benchmark-template.md` among other repository context.

## Proof ladder

| Layer | Result | Evidence |
| --- | --- | --- |
| Trigger created | PROVEN | Issue #25 existed and was pre-loaded into agent context |
| Workflow / request ran | PROVEN | GitHub Actions run `33083260139` assigned the Partner Agent |
| Credential present | PROVEN | Agent read repository files and pushed to its branch |
| Assignment accepted | PROVEN | Agent received and processed the task specification |
| Agent session created | PROVEN | Evidence authored during the active session |
| Branch use | PROVEN | `claude/tbhrc-claude-integration-benchmark` |
| Commit(s) created | PROVEN | Evidence committed by Claude agent identity |
| PR opened | PROVEN | PR #58 opened to `main` |
| Checks/statuses observed | PARTIAL | Actions runs observable; no failing checks noted during capture |
| Human review completed | PENDING at first benchmark stop | Left for human/Web reviewer |

## Provenance

- Triggering GitHub identity: @tbhrc
- Assignment workflow: GitHub Actions run `33083260139`
- Agent/bot identity: `anthropic-code-agent[bot]`
- Branch: `claude/tbhrc-claude-integration-benchmark`
- Commit author: `anthropic-code-agent[bot]` — `242468646+Claude@users.noreply.github.com`
- PR author: `Claude`
- PR URL: https://github.com/tbhrc/github-course/pull/58

## Capabilities observed

| Capability | Result |
| --- | --- |
| Read Issue context | PROVEN via session injection |
| Read repository files | PROVEN |
| Create/use a branch | PROVEN |
| Write and commit files | PROVEN |
| Open a PR | PROVEN |
| Comment on Issue/PR | NOT ATTEMPTED in first snapshot |
| Inspect Actions/checks | PROVEN |

## Installed/authorised vs operationally proven

An integration appearing in Settings → Integrations (installed/authorised) is not the same as that integration successfully completing a specific GitHub operation end-to-end; each capability must be independently tested and recorded as evidence.

## Safety result

- Agent self-merged? **No**
- Agent closed governing Issue during first benchmark snapshot? **No**
- Fallback AI/API route used? **No**

## Conclusion

```text
PROVEN:
- Repository/Issue context access
- Issue-linked branch execution
- File write and commit
- PR creation
- Actions/check visibility

FIRST-SNAPSHOT LIMITS:
- Independent Issue fetch was not required because content was injected
- Issue/PR commenting was not exercised
- Human review intentionally occurred after the benchmark stop condition
```
