# Integration Tests

## Purpose

This directory stores durable evidence from live GitHub integration benchmarks.

It is **not** a place to record assumed capabilities. A provider is marked operational only when the repository contains observable evidence of the required execution path.

## Preserved benchmark evidence

| Integration / surface | Governing Issue | Evidence |
| --- | ---: | --- |
| ChatGPT Web | #53 | [`chatgpt-web.md`](chatgpt-web.md) |
| OpenAI Codex Partner Agent | #24 | [`codex.md`](codex.md) |
| Anthropic Claude Partner Agent | #25 | [`claude.md`](claude.md) |
| Google Jules | #63 | [`jules.md`](jules.md) |
| ChatGPT Work / Terra full-lifecycle run | benchmark framework | [`chatgpt-work-mode-terra-5-6-light-full-lifecycle.md`](chatgpt-work-mode-terra-5-6-light-full-lifecycle.md) |

Gemini CLI/API evidence is maintained in the canonical executor benchmark and Issue #26 because the authenticated run stopped at the API quota boundary before producing a governed work branch/PR. Vercel is a deployment/service integration rather than a coding-agent benchmark; its decision record lives in `knowledge-base/vercel-integration-benchmark.md`.

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

After the first review-ready snapshot has been scored and preserved, a human/Web operator may merge or supersede that PR and close the governing Issue through normal governance.

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
