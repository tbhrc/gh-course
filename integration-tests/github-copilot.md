# GitHub Copilot Cloud Agent Benchmark — Issue #38

## Repository context inspected

- Course name: **GitHub Professional Operator — AI-First Founder Crash Course** (`/home/runner/work/github-course/github-course/README.md`)
- Root version: **0.2.0** (`/home/runner/work/github-course/github-course/VERSION`)
- Governing issue: https://github.com/tbhrc/github-course/issues/38

## Session start and issue access

- Trigger path: `push` to `dispatch/copilot/pro-1/38` (`2816a9b1d915ab68185f15287cb9daa136a2bf7d`) started workflow run `33080345287`.
- Assignment request: `.github/workflows/dispatch-copilot.yml` posted `copilot-swe-agent[bot]` with `agent_assignment` to `POST /repos/tbhrc/github-course/issues/38/assignees`.
- Issue read directly: **Yes** — the assignment instructions and this session context both state “Treat the assigned Issue as the complete task specification.”

## Capability evidence

| Capability | Result | Evidence |
| --- | --- | --- |
| Agent identity/model visibility | **Partially visible** | Identity visible as `Copilot` / `copilot-swe-agent[bot]`; dispatcher payload shows `"model": ""` (no explicit model exposed). |
| Branch capability | **Proven** | Agent branch created: `copilot/tbhrcgithub-course-23-benchmark-copilot-agent`. |
| Commit capability | **Proven** | Commit `16a115b1b593c09744f8cacc6975e67d5614bb16` with author `copilot-swe-agent[bot] <198982749+Copilot@users.noreply.github.com>` and committer `GitHub <noreply@github.com>`. |
| PR capability | **Proven** | Draft PR opened: https://github.com/tbhrc/github-course/pull/51 by `Copilot` targeting `main`. |
| Issue/PR comment capability | **Proven (Issue), Not yet observed (PR review/comment)** | Workflow posted issue comments `#issuecomment-5439544291` (failure run) and `#issuecomment-5440303420` (accepted assignment). No PR comments/reviews yet on PR #51. |
| Actions/check visibility | **Proven** | Dispatch run `33080345287` succeeded; cloud-agent workflow run `33080367470` is visible and linked to PR #51 with in-progress check run `copilot` (job `98545609805`). |

## Permission / plan / policy boundaries observed

1. **Pre-Pro attempt failed at assignment boundary**: run `33074951020` returned `HTTP 403 Forbidden` despite valid trigger, workflow execution, and masked `AGENT_DISPATCH_TOKEN`.
2. **Post-Pro attempt crossed the boundary**: run `33080345287` completed successfully and recorded accepted cloud-agent assignment, followed by Copilot-created branch/commit/PR artifacts.
3. Deterministic dispatch and authenticated API reachability were proven independently of agent execution in both runs.

## Exact GitHub provenance observed

- Dispatch actor / triggering actor (both runs): `tbhrc`
- Assignment target identity in payload: `copilot-swe-agent[bot]`
- Agent workflow actor / triggering actor: `Copilot` (GitHub App `copilot-swe-agent`)
- Agent-authored commit provenance:
  - Author: `copilot-swe-agent[bot] <198982749+Copilot@users.noreply.github.com>`
  - Committer: `GitHub <noreply@github.com>`
- PR provenance:
  - PR #51 author: `Copilot`
  - Head branch: `copilot/tbhrcgithub-course-23-benchmark-copilot-agent`
  - Base branch: `main`

## Deterministic vs agentic execution boundary

A successful deterministic GitHub Actions dispatch proves trigger/auth/authenticated API control, while agentic AI execution is only proven once accepted assignment produces native agent session artifacts (agent branch, agent-authored commit, and PR).
