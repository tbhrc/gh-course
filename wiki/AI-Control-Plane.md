# AI Control Plane — ChatGPT Web → GitHub → Agents

This page explains the course’s current **AI-first founder operating model**.

> **ChatGPT Web can be the conversational front door. GitHub becomes the durable control/evidence plane. Specialist executors work downstream through different supported routes.**

---

## 1. The Founder-Facing Model

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

The goal is to move recurring setup/complexity into the repository so day-to-day founder operation can stay simple.

---

## 2. One Control Plane Does Not Mean One Execution Architecture

The course now has live evidence across several routes.

### ChatGPT Web

```text
ChatGPT Web
→ connected GitHub App operations
→ Issues / branches / commits / PRs / review / merge / Actions inspection
```

This is the current control executor and is especially efficient for small GitHub-native work.

### GitHub Copilot cloud coding agent

```text
Issue / agent assignment
→ Copilot cloud session
→ agent branch
→ commit
→ Pull Request
```

The course’s early Free-plan assignment attempts returned 403. Later, with the required entitlement available, the operational benchmark produced the governed branch/commit/PR path.

### OpenAI Codex Partner Agent

```text
Issue / deterministic assignment
→ GitHub Partner Agent policy
→ Codex session
→ branch / commit / PR
```

The course proved a useful configuration distinction: paid Copilot entitlement did not by itself enable Codex. The **Allow Codex coding agent** Partner Agent policy also had to be enabled.

### Anthropic Claude Partner Agent

```text
Issue / deterministic assignment
→ correct Partner Agent identity + policy
→ Claude session
→ branch / commit / PR
```

An early stale/older Claude bot identity failed. The corrected current Partner Agent identity succeeded.

### Google Jules

```text
GitHub Issue
→ `jules` label
→ Google Labs Jules GitHub App
→ Jules cloud task
→ branch / commit / PR
```

Jules is a separate executor from Gemini CLI/API and must have its own benchmark/evidence lane.

### Gemini CLI/API

```text
GitHub trigger
→ GitHub Action
→ Gemini CLI / API
→ model inference
→ governed delivery if successful
```

Repository secret `GEMINI_API_KEY` is configured and authentication is proven. The current clean run reached Gemini inference and then stopped with HTTP 429 / daily free-tier quota exhaustion before producing a governed branch/commit/PR.

---

## 3. Deterministic Automation Is Not AI

A core course breakthrough is:

```text
automatic
≠
agentic
```

A GitHub Action can:

- run shell commands;
- call APIs;
- publish the Wiki;
- deploy Pages;
- publish a Release;
- assign an agent;
- invoke a model;

without all of those steps being AI reasoning.

Use the four-layer model:

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
permission available for requested operation
≠
request accepted
≠
AI execution proven
≠
correct output
```

This course learned the distinction through real missing-secret, 403, identity/policy, 429 and output-quality failures.

---

## 6. Current Executor Benchmark

The current source of truth is **not Issue #23**.

Use the maintained canonical file:

[**AI Executor Benchmark & Leaderboard →**](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

Current bounded one-file benchmark:

| Executor | End-to-end | Score /100 |
| --- | ---: | ---: |
| ChatGPT Web | 152s | **95.0** |
| OpenAI Codex | 202s | **90.6** |
| Anthropic Claude | 195s | **89.4** |
| GitHub Copilot | 225s | **87.3** |
| Google Jules | 307s | **77.9** |
| Gemini CLI/API | pending | pending |

### What this means

For the small benchmark task, ChatGPT Web is currently fastest overall.

Among measured cloud coding agents:

- Claude was fastest by runtime;
- Codex scored highest overall;
- Jules was slowest and its first review-ready snapshot contained more factual/governance errors.

Do **not** generalise this ranking to large refactors, builds, debugging or local-runtime work until those task classes are benchmarked.

---

## 7. Why First-Snapshot Quality Matters

Agent autonomy is useful only when output remains accurate and governable.

The clean Jules run proved:

```text
Issue #63
→ Jules task
→ branch
→ bot-authored commit
→ PR #66
```

but review found errors including:

- wrong governing Issue attribution;
- unsupported model attribution;
- incorrect PR-author claim;
- wrong Gemini workflow filename;
- unproven check claim;
- unsafe `Fixes #63` closing keyword.

Therefore benchmark quality is scored from the **first review-ready snapshot**. Human corrections after that do not improve the original benchmark score/time.

---

## 8. The Jules / Gemini Provenance Incident

The first Jules activation was accidentally triggered from Gemini Issue #26.

That produced real Jules evidence, but the wrong governing Issue/evidence file contaminated the benchmark.

Correct separation:

```text
#26 = Gemini CLI/API
#63 = Google Jules coding agent
```

The accidental PR was preserved as history and not merged. A clean Jules benchmark was then run from #63.

Reusable rule:

> **One executor benchmark = one governing Issue + one evidence lane.**

---

## 9. Secrets, Tokens and Provider Boundaries

Different execution routes can require different authentication/entitlement layers.

Example layers:

```text
repository Actions secret
user-authorised GitHub PAT/token
GitHub App permissions
Copilot entitlement
Partner Agent policy
provider API key
provider quota/billing
```

Course examples:

- `AGENT_DISPATCH_TOKEN` — stored GitHub credential interface for selected dispatch workflows;
- `COPILOT_GITHUB_TOKEN` — runtime variable mapping for Copilot CLI;
- `GEMINI_API_KEY` — Gemini provider credential stored as a GitHub Actions secret.

Secret names are not invented passwords. Their values must be real credentials issued by the authenticating service.

---

## 10. Failure Diagnosis

| Evidence | Likely boundary |
| --- | --- |
| no workflow run | trigger/workflow |
| job/step skipped | conditions/filter |
| secret empty | secret setup/scope/name |
| HTTP 401 | invalid/expired credential |
| HTTP 403 | authenticated but forbidden by permission/plan/policy/eligibility |
| task accepted but no branch/PR | agent session/runtime |
| HTTP 429 | quota/rate/billing |
| PR exists, checks fail | implementation/CI |
| PR exists, facts wrong | output quality/review |

Find the first broken layer instead of debugging the entire chain at once.

---

## 11. Repository Instructions

Root `AGENTS.md` is the shared repository operating contract.

The course discovered an important surface difference:

- supported coding-agent/repository-instruction contexts may automatically load applicable instructions;
- a generic fresh ChatGPT + GitHub connector conversation should **not** be assumed to automatically load root `AGENTS.md`.

The public/root README therefore exposes this explicit bootstrap:

```text
Use tbhrc/github-course. Before doing anything else,
read root AGENTS.md and follow its startup protocol
and repository workflow.
```

Keep one shared contract rather than several competing governance documents.

---

## 12. Direct Assignment vs Workflow Dispatch

### Prefer direct assignment when native capability is enough

```text
Issue
→ supported coding agent
→ branch / PR
```

Do not build an Action merely to launch a worker if native assignment already provides the required route.

### Use deterministic dispatch when it solves a real control problem

```text
ChatGPT Web / Issue/event
→ GitHub Action/API dispatcher
→ specialist worker
→ PR/output
```

Useful when:

- the founder needs a simple trigger surface;
- authentication/policy handling must be centralised;
- the route needs repeatable safe context/permissions;
- direct assignment is not the available architecture.

---

## 13. Executor Routing Principle

Delegation is useful when it provides capability or demonstrated efficiency.

Do not delegate simply because an agent is available.

Current course rule:

> **Fastest capable executor wins only when quality, governance and reliability remain acceptable.**

Use local/specialist agents for tasks requiring capabilities Web does not have (for example local filesystem/build/runtime work) or where repeated benchmarks show a real advantage.

---

## 14. GitHub as the Durable Operating Plane

The emerging founder model is:

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

That is more valuable than treating each AI tool as an isolated chat/coding island.

---

## References

- [Canonical executor benchmark](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)
- [ChatGPT Web + GitHub control plane](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-github-control-plane.md)
- [Deterministic Actions vs agentic AI](https://github.com/tbhrc/github-course/blob/main/knowledge-base/deterministic-actions-vs-agentic-ai.md)
- [Web-first/local-by-exception routing](https://github.com/tbhrc/github-course/blob/main/knowledge-base/web-first-local-by-exception-executor-policy.md)
- [Module 09 — AI Agents + GitHub](https://github.com/tbhrc/github-course/tree/main/09-ai-agents-github)
- [David agent benchmark learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-agent-benchmarks.md)

## Navigation

[Home](Home) · [Course Handbook](Course-Handbook) · [Course Manual](Course-Manual) · [Student Dashboard — David](Student-Dashboard-David) · [Course Materials](Course-Materials) · [Knowledge Base](Knowledge-Base)
