# Agent Integration Benchmark — OpenAI Codex

## Identity

- Provider / agent: OpenAI Codex GitHub coding agent (`openai-code-agent[bot]` / GitHub App actor `Codex`)
- Product/model visibility: Session runtime identifies "Codex, a coding agent based on GPT-5"; no narrower model ID was exposed in GitHub run metadata.
- Governing Issue: `tbhrc/github-course#24`
- Parent benchmark: `tbhrc/github-course#23`
- Benchmark date: 2026-08-27
- Triggered by: `Dispatch Codex from GitHub` workflow push on `dispatch/codex/pro-2/24`
- Dispatch workflow / run: `33081457803`

## Objective

Prove exactly which OpenAI Codex integration capabilities are operationally available in this repository, and document failures/limits as evidence.

## Course + Version Context

This repository is the live "GitHub Professional Operator — AI-First Founder Crash Course" plus reusable AI-agent coaching system. The version file shows `0.2.0` at benchmark time.

## Session Start Evidence

```text
trigger branch push (dispatch/codex/pro-2/24)
→ Dispatch Codex from GitHub run 33081457803
→ native issue assignment accepted for openai-code-agent[bot]
→ Running OpenAI Codex run 33081482759 started
→ Codex branch codex/codex-integration-benchmark
→ draft PR #52 opened
```

## Proof Ladder

| Layer | Result | Evidence |
| --- | --- | --- |
| Could read this Issue directly | yes | GitHub MCP `issue_read` returned Issue #24 body/state/metadata/linked PR. |
| Repository context access | yes | Read `AGENTS.md`, `students/david/*`, module `09-ai-agents-github/README.md`, `knowledge-base/README.md`, `VERSION`, `CHANGELOG.md`, runbook/template files. |
| Could create/use issue-linked branch | yes (use proven) | Active working branch: `codex/codex-integration-benchmark` (non-main), linked to Issue #24 via draft PR #52. |
| Could write files | yes | Created `integration-tests/codex.md` in working tree on non-main branch. |
| Could commit | yes | Local git identity is `openai-code-agent[bot] <242516109+Codex@users.noreply.github.com>` and branch already contains Codex commit `4123a89` (`Initial plan`). |
| Could open a PR | yes (proven by integration flow) | Draft PR `#52` to `main` exists with author `Codex` and head `codex/codex-integration-benchmark`. |
| Could comment on Issue/PR from this session | not proven | Available tools allowed reading comments; no direct comment-write tool was exposed in this runtime. Existing comments by `github-actions[bot]` and `tbhrc` are visible. |
| Could inspect Actions/checks | yes | Listed workflow runs, read run details, read failed job logs, and read PR check-runs (`codex` check in progress). |
| Permission prompts/failures/unavailable capabilities | mixed | Earlier dispatch run `33080639278` failed at assignment with HTTP `403 Forbidden`; after partner-agent enablement, run `33081457803` accepted assignment. No interactive permission prompt UI surfaced in this session. |
| Exact GitHub identity shown for commit/PR | yes | Commit author: `openai-code-agent[bot] <242516109+Codex@users.noreply.github.com>`; PR author/app actor: `Codex` (`https://github.com/apps/openai-code-agent`). |

## Actions / Checks Evidence

- Failed benchmark run inspected: `33080639278`
- Failed job log evidence: assignment request reached GitHub API and returned:

```json
{
  "message": "Forbidden",
  "documentation_url": "https://docs.github.com/rest/issues/assignees#add-assignees-to-an-issue",
  "status": "403"
}
```

- Later successful assignment run observed: `33081457803` (`conclusion: success`)
- Codex execution run observed: `33081482759` (`Running OpenAI Codex`, in progress during evidence capture)

## Installed/Authorised vs Operationally Proven

An integration being installed/authorised only indicates potential access, while operationally proven means the exact target action was executed successfully end-to-end with observable evidence (for example assignment accepted, branch/commit/PR/check artifacts visible).

## Conclusion

```text
PROVEN:
- Issue read access, repository context access, branch use, write/commit identity, PR presence, and Actions/checks inspection.
- Native Codex assignment can succeed in this repository after partner-agent policy enablement.

NOT YET PROVEN IN THIS SESSION:
- Direct Issue/PR commenting by this Codex runtime via an exposed write-comment tool.

STOP CONDITION RESPECTED:
- No self-merge performed.
- Governing Issue #24 remained open during the first review-ready benchmark snapshot.
```
