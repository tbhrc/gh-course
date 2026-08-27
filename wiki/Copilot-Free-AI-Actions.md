# Copilot Free AI Inside GitHub Actions

> **Historical milestone:** this page preserves the specific Free-plan execution-mode proof from 27 August 2026. It is not the current overall Copilot capability dashboard. The course later proved the GitHub Copilot cloud coding-agent branch/commit/PR route after the required entitlement became available. For current cross-executor status, use the [canonical AI Executor Benchmark & Leaderboard](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md).

## Proven Result

On 27 August 2026 the course physically proved that **Copilot Free could perform genuine AI inference inside GitHub Actions using GitHub Copilot CLI**.

At that point, the Free plan did **not** permit the autonomous Copilot cloud coding-agent assignment route being tested.

This page intentionally preserves that historical plan/execution-mode distinction rather than rewriting the original result after later paid cloud-agent success.

## Execution-Mode Split at the Time of This Test

```text
COPILOT FREE — TESTED STATE

✅ Issue-triggered GitHub Action
✅ GitHub Copilot CLI
✅ genuine AI inference
✅ AI-generated text output

❌ assign Copilot cloud agent to Issue
❌ autonomous cloud-agent branch / commit / PR
```

## Live Evidence

### Cloud-agent test — Issue #38, initial Free-plan state

```text
ChatGPT Web
→ dispatch trigger
→ GitHub Action
→ authenticated copilot-swe-agent[bot] assignment request
→ HTTP 403 Forbidden
```

No Copilot cloud-agent session started in that initial run.

**Later course evidence:** after the required entitlement became available, the separate clean executor benchmark did produce a Copilot cloud-agent branch, commit and PR. Current timing/scoring belongs in the canonical executor benchmark, not this historical page.

### Free-plan inference test — Issue #45

```text
Issue #45 opened
→ Copilot Free AI Smoke Test Action
→ GitHub Copilot CLI installed
→ bounded context assembled
→ Copilot AI inference
→ captured AI response
→ github-actions[bot] posted response to Issue
```

Actions run `33076875845` completed successfully, including **Run Copilot AI inference**.

The AI-generated response correctly explained the repository purpose, benchmark objective and deterministic-vs-agentic distinction.

## Secret Mapping

The repository secret remained:

```text
AGENT_DISPATCH_TOKEN
```

The workflow mapped it at runtime:

```yaml
env:
  COPILOT_GITHUB_TOKEN: ${{ secrets.AGENT_DISPATCH_TOKEN }}
```

So:

```text
stored secret name
≠
runtime variable expected by the consumer
```

## Why This Still Matters

The long-lived lesson is not the historical Free-plan product matrix itself.

It is:

> **Classify AI capability by execution mode and prove each mode independently.**

Evaluate separately where relevant:

- interactive Copilot/agent experience;
- Copilot CLI;
- Copilot CLI inside Actions;
- GitHub Agentic Workflows;
- Copilot cloud coding agent;
- third-party Partner Agents such as Codex/Claude.

Plans, policies and entitlements can change, but the evidence discipline remains valid.

## Founder Flow Proven by This Historical Test

```text
ChatGPT Web
→ create Issue
→ GitHub Action fires
→ Copilot CLI reasons
→ safe captured output
→ GitHub records evidence
```

Later benchmark work extended the course into autonomous cloud-agent branch/commit/PR execution through other supported routes.

## Current Status Link

For the current executor comparison, including later Copilot/Codex/Claude/Jules results and the Gemini quota boundary:

[**Open AI Executor Benchmark & Leaderboard →**](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

## Historical Evidence

- [Issue #43 — setup benchmark](https://github.com/tbhrc/github-course/issues/43)
- [Issue #45 — successful Free-plan inference trigger](https://github.com/tbhrc/github-course/issues/45)
- [Verified knowledge note](https://github.com/tbhrc/github-course/blob/main/knowledge-base/copilot-free-ai-in-actions.md)
- [David learning evidence](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-copilot-free-actions.md)

## Navigation

[AI Control Plane](AI-Control-Plane) · [Student Dashboard — David](Student-Dashboard-David) · [Knowledge Base](Knowledge-Base) · [Home](Home)
