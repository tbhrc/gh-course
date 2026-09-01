# AI Control Plane — ChatGPT Web → GitHub → Agents

This page explains the course's **stable AI-first operating architecture**.

> **Current executor timings, scores and capability status are generated separately from the canonical benchmark.** This page deliberately does not maintain another live matrix.

[Open AI Executor Benchmark & Leaderboard →](AI-Executor-Benchmark)

---

## 1. Founder-Facing Model

```text
LAYER 1 — TALK / DECIDE
human + ChatGPT Web
→ brainstorm / research / clarify
→ decide
→ create/refine governed GitHub Issue

LAYER 2 — GITHUB CONTROL / EXECUTION
Issue
→ direct assignment OR deterministic trigger/workflow
→ specialist executor
→ branch / commits / bounded output
→ Pull Request
→ checks / review
→ merge
→ Wiki / Pages / deployment / release
→ durable evidence
```

The objective is to move recurring complexity into the repository contract so everyday founder operation stays simple.

---

## 2. One Control Plane Does Not Mean One Execution Architecture

Different executors can use different supported routes while GitHub remains the shared governance/evidence plane.

### ChatGPT Web

```text
ChatGPT Web
→ connected GitHub operations
→ Issues / branches / commits / PRs / review / merge / Actions inspection
```

### GitHub Copilot cloud coding agent

```text
Issue / assignment
→ Copilot cloud session
→ agent branch
→ commit
→ Pull Request
```

### OpenAI Codex Partner Agent

```text
Issue / assignment
→ Partner Agent policy + authentication
→ Codex session
→ branch / commit / PR
```

### Anthropic Claude Partner Agent

```text
Issue / assignment
→ correct Partner Agent identity/policy
→ Claude session
→ branch / commit / PR
```

### Google Jules

```text
GitHub Issue
→ jules trigger/label
→ Jules cloud task
→ branch / commit / PR
```

### Gemini CLI/API

```text
GitHub trigger
→ GitHub Action
→ Gemini CLI / provider API
→ inference
→ governed delivery when successful
```

These routes have different setup, permissions, entitlement and provenance models. Compare them by observed evidence, not by brand name.

---

## 3. Deterministic Automation Is Not AI

```text
automatic
≠
agentic
```

A GitHub Action can run scripts, call APIs, publish documentation, deploy Pages, publish Releases, assign agents or invoke models.

Use this four-layer model:

```text
1. control surface
2. deterministic trigger / automation
3. optional AI inference / agent execution
4. delivery + durable evidence
```

---

## 4. Proof Ladders

### Coding agent

```text
trigger / assignment requested
→ authentication accepted
→ agent task/session visible
→ repository/Issue read
→ branch visible
→ substantive commit visible
→ PR visible
→ review/checks
```

### Model inference inside Actions

```text
trigger
→ workflow run
→ credential accepted
→ inference step reached
→ generated output
→ bounded delivery
```

Do not claim one proof ladder from evidence belonging to another.

---

## 5. Installed Is Not Proven

Always separate:

```text
installed / authorised
≠
permission available
≠
request accepted
≠
AI execution proven
≠
correct output
```

The course has encountered missing-secret, HTTP 403, stale identity/policy, HTTP 429 and output-quality failures. Each belongs to a different layer.

---

## 6. Current Executor State

Do not copy the leaderboard into this page.

```text
knowledge-base/executor-benchmark-framework.md
= canonical benchmark truth

        ↓ deterministic Wiki publisher

AI-Executor-Benchmark
= generated reader-facing view
```

[**Open generated AI Executor Benchmark & Leaderboard →**](AI-Executor-Benchmark)

The benchmark measures speed, fidelity, output quality, reliability, autonomy, governance, provenance and efficiency. Setup friction is tracked separately from operational runtime.

---

## 7. First-Snapshot Quality Matters

Agent autonomy is useful only when output remains accurate and governable.

Benchmark scoring therefore uses the **first review-ready snapshot**. Human corrections after review do not retroactively improve the original runtime/quality score.

This protects the comparison from rewarding agents that move fast but require substantial factual or governance cleanup.

---

## 8. Provenance Discipline

One executor benchmark should have one clear evidence lane:

```text
one executor
→ one governing Issue/run
→ one evidence file
→ one branch/PR path
```

The course learned this directly when an early Jules activation was accidentally launched from the Gemini benchmark Issue. The activation evidence was preserved, but the clean benchmark was separated rather than rewriting history.

---

## 9. Secrets, Tokens and Provider Boundaries

Possible authentication/entitlement layers include:

```text
repository Actions secret
user-authorised GitHub token/PAT
GitHub App permissions
Copilot entitlement
Partner Agent policy
provider API key
provider quota/billing
```

A secret name is an interface; the value must be a real credential issued by the relevant service.

Stored secret names and runtime environment-variable names may differ.

---

## 10. Failure Diagnosis

| Evidence | Likely boundary |
| --- | --- |
| no workflow run | trigger/workflow |
| job/step skipped | condition/filter |
| secret empty | secret setup/scope/name |
| HTTP 401 | invalid/expired credential |
| HTTP 403 | authenticated but forbidden by permission/plan/policy/eligibility |
| task accepted but no branch/PR | agent session/runtime |
| HTTP 429 | quota/rate/billing |
| PR exists, checks fail | implementation/CI |
| PR exists, facts wrong | output quality/review |

Find the **first broken layer** instead of debugging the whole chain at once.

---

## 11. Repository Instructions

Root `AGENTS.md` is the shared repository operating contract.

A generic fresh ChatGPT + GitHub connector conversation should not be assumed to load it automatically, so the repository README exposes a one-line bootstrap instruction.

Keep one shared contract rather than several competing governance documents.

---

## 12. Direct Assignment vs Workflow Dispatch

Prefer direct assignment when native capability is enough:

```text
Issue
→ supported coding agent
→ branch / PR
```

Use deterministic dispatch when it solves a real control problem:

```text
ChatGPT Web / Issue/event
→ GitHub Action/API dispatcher
→ specialist worker
→ PR/output
```

Do not build automation merely because automation is possible.

---

## 13. Canonical AI Provider Failover and Routing Principle

> **Delegate for capability or demonstrated efficiency — not merely because another agent is available.**

When a preferred AI provider encounters quota limits, HTTP 429 rate exhaustion, or budget caps:

1. **Routing Event:** Treat quota exhaustion as an operational routing event rather than an execution blocker.
2. **Provider-Neutral Execution:** Switch execution or review to an authorized alternate provider (Copilot, Claude, Jules, Gemini, or future agents) without waiting for quota reset.
3. **Collision Safety & Handoff:** Preserve one-active-writer collision safety and perform a clean handoff before launching a secondary executor.
4. **Governance Invariance:** Maintain all Issue-linked branch workflows, deterministic Action checks, and review acceptance criteria regardless of provider failover.

Governed by `tbhrc/skills#13` / `github-agent-workflow v1.1.0`.

---

## 14. GitHub as the Durable Operating Plane

```text
conversation / intent
→ Issue
→ Project visibility where useful
→ executor
→ PR
→ checks/review
→ merge
→ automation/publishing/release
→ searchable durable evidence
```

This is more useful than treating each AI tool as an isolated coding/chat island.

---

## References

- [Generated AI Executor Benchmark](AI-Executor-Benchmark)
- [Canonical executor benchmark](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)
- [ChatGPT Web + GitHub control plane](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-github-control-plane.md)
- [Deterministic Actions vs agentic AI](https://github.com/tbhrc/github-course/blob/main/knowledge-base/deterministic-actions-vs-agentic-ai.md)
- [Web-first/local-by-exception routing](https://github.com/tbhrc/github-course/blob/main/knowledge-base/web-first-local-by-exception-executor-policy.md)
- [Module 09 — AI Agents + GitHub](https://github.com/tbhrc/github-course/tree/main/09-ai-agents-github)

## Navigation

[Home](Home) · [AI Benchmark](AI-Executor-Benchmark) · [Course Handbook](Course-Handbook) · [Course Manual](Course-Manual) · [Student Dashboard — David](Student-Dashboard-David) · [Course Materials](Course-Materials) · [Knowledge Base](Knowledge-Base)
