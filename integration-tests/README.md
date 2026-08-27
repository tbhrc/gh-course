# Integration Tests

## Purpose

This directory stores durable evidence from live GitHub integration benchmarks.

It is **not** a place to record assumed capabilities. A provider is marked operational only when the repository contains observable evidence of the required execution path.

## Current benchmark targets

| Integration | Governing Issue | Expected evidence file |
| --- | ---: | --- |
| GitHub Copilot cloud agent | #38 | `copilot.md` |
| OpenAI Codex coding agent | #24 | `codex.md` |
| Anthropic Claude | #25 | `claude.md` |
| Google Gemini | #26 | `gemini.md` |
| Vercel | #27 | `vercel.md` |

## Evidence standard

For an AI coding agent, record each layer separately:

```text
1. trigger created
2. workflow / assignment request ran
3. authentication accepted
4. agent assignment accepted
5. agent session created
6. agent branch created
7. commits created
8. Pull Request opened
9. checks executed
10. human review completed
11. merge decision made
```

Do not collapse these into a single `working/not working` statement.

## First-run safety rule

The first successful paid-agent benchmark must stop at an **open or draft Pull Request**.

The agent must not:

- merge its own PR;
- close the governing Issue;
- bypass required checks;
- silently use a different AI/API billing route.

## Provenance to preserve

Capture, where observable:

- triggering actor;
- dispatch workflow run and event;
- exact agent/bot identity;
- assignee/timeline evidence;
- session link or identifier;
- branch name;
- commit author and committer;
- PR author;
- changed files;
- checks/statuses;
- comments/reviews;
- plan/AI-credit evidence where GitHub exposes it;
- any permission, quota, policy or entitlement failure.

Use `agent-benchmark-template.md` as the starting structure.