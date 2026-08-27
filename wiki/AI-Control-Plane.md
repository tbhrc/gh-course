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
→ coding agent / integration / AI inference
→ branch / output
→ commits / Pull Request when authorised
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
optional AI inference / agent hand-off
        ↓
agentic reasoning + output
```

A workflow may do useful work without any AI model. It may also invoke an AI model directly or act only as a deterministic dispatcher that starts a separate AI agent.

### Four observable layers

```text
1. Control surface
2. Trigger + deterministic automation
3. Agentic inference/execution
4. Delivery + evidence
```

This lets us diagnose failures precisely rather than treating “GitHub AI” as one black box.

## Live Dispatcher Evidence — Codex #24

```text
✅ Web agent created dispatch push
✅ GitHub Action started automatically
✅ Action resolved Issue #24
✅ real fine-grained GitHub PAT became visible to Actions as ***
✅ authenticated coding-agent API call was reached
✅ corrected agent_assignment payload was sent
❌ Codex partner-agent assignment returned HTTP 403 Forbidden
```

Conclusion: deterministic dispatch/authentication work; Codex partner-agent execution remains unproven.

## Live Dispatcher Evidence — GitHub Copilot Cloud Agent #38

A separate GitHub Copilot cloud-agent dispatcher was built under PR #40 and fired from ChatGPT Web.

```text
Run: 33074951020
Branch: dispatch/copilot/38

✅ Issue #38 resolved
✅ AGENT_DISPATCH_TOKEN present as ***
✅ copilot-swe-agent[bot] request sent
✅ agent_assignment payload sent
✅ authenticated GitHub API call reached assignment endpoint
❌ HTTP 403 Forbidden
❌ no Copilot cloud-agent session
❌ no Copilot-authored branch / commit / PR
```

This is a plan/policy/entitlement boundary for the cloud-agent execution mode, not proof that all Copilot AI automation is unavailable.

## Proven Free-Plan AI Inference — Issue #45

The course then changed **execution mode** instead of repeating the blocked cloud-agent assignment.

```text
Issue #45 opened
→ GitHub Actions
→ install GitHub Copilot CLI
→ build bounded repository + Issue context
→ Copilot AI inference
→ capture generated text
→ deterministic Issue comment
```

Actions run `33076875845` completed successfully, including:

```text
✅ Check out repository
✅ Install GitHub Copilot CLI
✅ Build bounded prompt
✅ Run Copilot AI inference
✅ Post AI response to Issue
```

Copilot generated original repository-aware analysis. The prose was not embedded in the workflow; deterministic steps only assembled context, launched Copilot CLI, captured the response and posted it.

Therefore the current verified capability matrix is:

```text
COPILOT FREE

✅ Issue-triggered AI inference inside GitHub Actions via Copilot CLI
✅ AI-generated safe text output

❌ autonomous Copilot cloud-agent Issue assignment
❌ cloud-agent-authored branch / commit / PR
```

[Copilot Free proof →](Copilot-Free-AI-Actions)

[Verified knowledge note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/copilot-free-ai-in-actions.md)

## Secret Interface

The repository keeps the durable secret name:

```text
AGENT_DISPATCH_TOKEN
```

The Copilot CLI workflow maps that secret to its expected runtime variable:

```yaml
env:
  COPILOT_GITHUB_TOKEN: ${{ secrets.AGENT_DISPATCH_TOKEN }}
```

So:

```text
stored secret name
≠
runtime environment-variable name
```

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

## Distinct AI Execution Modes

Do not ask only whether “Copilot is available.” Evaluate the execution mode.

### Direct cloud coding-agent assignment

```text
Issue
→ assign Copilot / Codex / Claude where eligible
→ autonomous agent works
→ Pull Request
```

Availability depends on plan and policy.

### Copilot CLI inside Actions

```text
Issue / event
→ GitHub Action
→ Copilot CLI
→ AI inference
→ bounded output
```

This route is now proven on Copilot Free in this repository.

### GitHub Agentic Workflow

```text
Issue / event
→ GitHub Agentic Workflow
→ supported AI engine
→ declared safe output
```

This remains a distinct GitHub-native workflow system and can be benchmarked separately if needed.

## Live Capability Benchmark

| Integration / mode | Test |
| --- | --- |
| ChatGPT Web GitHub connector | Control — proven through live course operation |
| OpenAI Codex partner agent | [Issue #24](https://github.com/tbhrc/github-course/issues/24) — dispatcher/auth proven; assignment 403 |
| Anthropic Claude | [Issue #25](https://github.com/tbhrc/github-course/issues/25) |
| Google Gemini | [Issue #26](https://github.com/tbhrc/github-course/issues/26) |
| Vercel | [Issue #27](https://github.com/tbhrc/github-course/issues/27) |
| Fully automatic Issue → agent → PR | [Issue #28](https://github.com/tbhrc/github-course/issues/28) |
| GitHub Copilot cloud agent | [Issue #38](https://github.com/tbhrc/github-course/issues/38) — dispatcher/auth proven; assignment 403 |
| Copilot Free AI in Actions | [Issue #45](https://github.com/tbhrc/github-course/issues/45) — **AI inference proven** |

[Master capability matrix →](https://github.com/tbhrc/github-course/issues/23)

## Evidence Rule

```text
installed / authorised
≠
permission available
≠
AI request accepted
≠
AI inference proven
≠
autonomous agent execution proven
```

Use the proof ladder that matches the execution mode.

For cloud agents:

```text
trigger
→ workflow/API
→ authentication
→ agent assignment
→ agent session
→ branch/commit
→ PR
```

For inference inside Actions:

```text
trigger
→ workflow
→ authentication
→ Copilot inference step
→ context-aware generated output
→ safe delivery
```

## Product / Billing Boundary

The course now has live evidence that plan capability is not binary:

- **Copilot Free** can perform limited AI inference through Copilot CLI inside Actions using the user's Copilot entitlement/AI credits;
- **Copilot cloud agent** remains unavailable on the current Free plan;
- **third-party coding agents** such as Codex/Claude are separate partner-agent capabilities with their own paid-plan/policy boundaries.

Therefore compare plans by **execution mode**, not just by the word “Copilot.”

## Founder Principle

> **Move recurring complexity into the repository contract so the founder's front door can stay simple: talk → decide → Issue → trigger → governed AI output.**

## References

- [Verified control-plane note](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-github-control-plane.md)
- [Deterministic Actions vs agentic AI](https://github.com/tbhrc/github-course/blob/main/knowledge-base/deterministic-actions-vs-agentic-ai.md)
- [Copilot Free AI in Actions](https://github.com/tbhrc/github-course/blob/main/knowledge-base/copilot-free-ai-in-actions.md)
- [Codex dispatch architecture](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-codex-dispatch.md)
- [David's Copilot Free learning evidence](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-copilot-free-actions.md)

## Navigation

[Home](Home) · [Copilot Free AI Actions](Copilot-Free-AI-Actions) · [Epiphanies](Epiphanies-and-Learning-Breakthroughs) · [Student Dashboard — David](Student-Dashboard-David) · [Knowledge Base](Knowledge-Base)
