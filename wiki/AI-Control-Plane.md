# AI Control Plane — ChatGPT Web → GitHub → Agents

This page tracks the course's emerging **AI-first founder operating model**.

> **ChatGPT Web can be the conversational front door. GitHub becomes the durable control and execution layer. Specialist agents become downstream workers.**

## Two-Layer Model

```text
LAYER 1 — CHAT / DECISION
ChatGPT Web
→ brainstorm
→ research
→ clarify
→ decide
→ create GitHub Issue

LAYER 2 — EXECUTION / EVIDENCE
GitHub Issue
→ deterministic trigger / dispatcher
→ coding agent / integration
→ branch
→ commits
→ Pull Request
→ checks / review
→ merge
→ Actions
→ Wiki / Pages / deployment / release
```

The key is repository setup. Once the repository contains durable rules, agents do not need the operating model re-explained in every chat.

## Deterministic Automation Is Not Agentic AI

This distinction is now physically demonstrated in the course.

```text
ChatGPT Web / human
        ↓
GitHub trigger
        ↓
GitHub Action
        ↓
deterministic script / API request
        ↓
optional AI-agent hand-off
        ↓
agentic reasoning + repository work
```

A workflow may do useful work without any AI model. It may also be used only as a deterministic dispatcher that starts a separate AI agent.

### Four observable layers

```text
1. Control surface
2. Trigger + deterministic automation
3. Agentic execution
4. Delivery + evidence
```

This lets us diagnose failures precisely rather than treating “GitHub AI” as one black box.

## Live Dispatcher Evidence — Issue #24

The ChatGPT Web → GitHub command bus has progressed through these verified stages:

```text
✅ Web agent created dispatch push
✅ GitHub Action started automatically
✅ Action resolved Issue #24
✅ missing secret was detected correctly
✅ real fine-grained GitHub PAT was created
✅ PAT became visible to Actions as ***
✅ authenticated coding-agent API call was reached
❌ Codex partner-agent assignment returned HTTP 403 Forbidden
```

The important conclusion is:

> **The deterministic dispatcher is working. Codex agentic execution remains unproven because GitHub rejects the downstream partner-agent assignment.**

That is a downstream eligibility/policy/permission boundary, not evidence that the Action failed to run.

[Verified deterministic-vs-agentic note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/deterministic-actions-vs-agentic-ai.md)

[Codex dispatcher architecture →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-codex-dispatch.md)

## Repository Contract

Useful setup surfaces include:

- `AGENTS.md`
- repository AI instructions
- Issue-first governance
- branch / Pull Request rules
- Actions workflows
- Wiki / Pages publishing
- release automation
- permissions and rulesets
- connected agents and services
- verified knowledge base

## Two Ways to Start an Agent

### 1. Direct coding-agent assignment

```text
Issue
→ assign Copilot / Codex / Claude where eligible
→ agent works
→ Pull Request
```

This is a native GitHub coding-agent path. Availability depends on the relevant Copilot plan and policy.

### 2. GitHub Agentic Workflow

```text
Issue / event
→ GitHub Agentic Workflow
→ supported AI engine
→ declared safe output
→ Pull Request / Issue comment / bounded operation
```

This is the closer match to a fully automatic **Issue → Action → AI** system.

## Live Capability Benchmark

The course measures each connection independently rather than assuming capability.

| Integration | Test |
| --- | --- |
| ChatGPT Web GitHub connector | Control — proven through live course operation |
| OpenAI Codex partner agent | [Issue #24](https://github.com/tbhrc/github-course/issues/24) — dispatcher/auth proven; partner-agent assignment currently 403 |
| Anthropic Claude | [Issue #25](https://github.com/tbhrc/github-course/issues/25) |
| Google Gemini | [Issue #26](https://github.com/tbhrc/github-course/issues/26) |
| Vercel | [Issue #27](https://github.com/tbhrc/github-course/issues/27) |
| Fully automatic Issue → agent → PR | [Issue #28](https://github.com/tbhrc/github-course/issues/28) |
| GitHub Copilot cloud agent | [Issue #38](https://github.com/tbhrc/github-course/issues/38) — independent native-agent benchmark |

[Master capability matrix →](https://github.com/tbhrc/github-course/issues/23)

## Evidence Rule

```text
installed / authorised
≠
permission available
≠
agent assignment accepted
≠
agent execution proven
```

For agentic workflows, use the proof ladder:

```text
trigger
→ workflow run
→ authentication
→ agent assignment
→ agent session
→ branch/commit
→ PR
→ checks
→ merge/deployment
```

## Product / Billing Boundary

The two-layer architecture does **not** automatically mean one subscription pays for every downstream agent.

Current GitHub documentation distinguishes:

- **Copilot cloud agent** — available on paid Copilot plans;
- **third-party coding agents** such as Codex/Claude — available on paid Copilot plans and subject to partner-agent policies;
- **Copilot Free** — limited AI features/credits but not the same agent entitlement set.

The course verifies the actual route before making commercial claims.

## Founder Principle

> **Move recurring complexity into the repository contract so the founder's front door can stay simple: talk → decide → Issue → dispatch.**

## References

- [Verified control-plane note](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-github-control-plane.md)
- [Deterministic Actions vs agentic AI](https://github.com/tbhrc/github-course/blob/main/knowledge-base/deterministic-actions-vs-agentic-ai.md)
- [Codex dispatch architecture](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-codex-dispatch.md)
- [Pages / Actions / Integrations control plane](https://github.com/tbhrc/github-course/blob/main/knowledge-base/pages-actions-integrations-control-plane.md)
- [David's latest learning evidence](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-deterministic-vs-agentic.md)

## Navigation

[Home](Home) · [Epiphanies](Epiphanies-and-Learning-Breakthroughs) · [Student Dashboard — David](Student-Dashboard-David) · [Knowledge Base](Knowledge-Base)
