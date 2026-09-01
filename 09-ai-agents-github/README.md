# 09 — AI Agents + GitHub

## Objective

Use GitHub as the durable **control, governance and evidence plane** between human decisions, deterministic automation, AI agents and deployment/publishing systems.

This module is based on live execution in this repository, not only product descriptions.

## Core Mental Model

```text
human intent / ChatGPT Web
→ governed GitHub Issue
→ direct agent assignment OR deterministic dispatch/workflow
→ isolated agent/work branch
→ commits / bounded output
→ Pull Request
→ checks / review
→ merge
→ Actions / deployment / Wiki / Pages / release
→ durable evidence
```

GitHub is not simply a place an agent reads code. It can be the common operating layer where different agents receive bounded work while Issues, branches, commits, PRs, checks and history remain inspectable by humans.

## One Control Plane, Several Execution Architectures

Do not assume every AI executor works through the same route.

### ChatGPT Web connected GitHub operations

```text
ChatGPT Web
→ GitHub connector
→ Issue / branch / commit / PR / review / merge / Actions inspection
```

Useful for founder/operator control and small GitHub-native work.

### GitHub Copilot cloud coding agent

```text
Issue / assignment
→ Copilot cloud agent
→ agent branch / commits / PR
```

The course initially hit a Free-plan/eligibility boundary, then later proved the operational cloud-agent route after the required entitlement became available.

### OpenAI Codex partner agent

```text
Issue / deterministic assignment route
→ GitHub Partner Agent policy
→ Codex session
→ branch / commits / PR
```

The course proved that paid Copilot entitlement alone was not enough: the Codex Partner Agent policy also had to be enabled before the assignment route succeeded.

### Anthropic Claude partner agent

```text
Issue / deterministic assignment route
→ correct Partner Agent identity + policy
→ Claude session
→ branch / commits / PR
```

The first route used a stale/incorrect bot identity and failed. The corrected current Partner Agent identity succeeded.

### Google Jules

```text
GitHub Issue
→ `jules` label
→ Google Labs Jules GitHub App
→ Jules cloud task
→ agent branch / commit / PR
```

Jules is a distinct Google cloud coding-agent surface. Do not record Jules evidence as Gemini API/CLI evidence.

### Gemini CLI/API workflow

```text
GitHub trigger
→ GitHub Action
→ Gemini CLI / API
→ model inference
→ governed output
```

Authentication using repository secret `GEMINI_API_KEY` is proven. The current clean benchmark reached Gemini inference and then stopped on HTTP 429 / daily free-tier quota before producing a governed branch/commit/PR.

## Deterministic Automation Is Not Agentic AI

Use this four-layer model:

```text
1. CONTROL SURFACE
   human / ChatGPT Web / GitHub UI

2. TRIGGER + DETERMINISTIC AUTOMATION
   Issue / push / workflow_dispatch
   → GitHub Actions / API dispatcher

3. AGENTIC EXECUTION
   Copilot / Codex / Claude / Jules / Gemini / other executor

4. DELIVERY + EVIDENCE
   branch / commit / PR / comment / check / deployment
```

A successful Action proves only the layer it actually executed.

```text
workflow run succeeded
≠
AI model definitely ran
≠
agent created code
≠
PR is correct
```

## Capability Proof Ladder

For coding agents:

```text
trigger / assignment requested
→ authentication accepted
→ agent session visible
→ agent reads task/repo
→ agent branch visible
→ substantive commit visible
→ PR visible
→ checks/review visible
→ merge decision
```

For model inference inside Actions:

```text
trigger
→ workflow
→ credential accepted
→ inference step reached
→ model response generated
→ bounded output delivered
```

Keep these evidence ladders separate.

## Installed Is Not Proven

Always use:

```text
installed / authorised
≠
permission granted for every operation
≠
operation successfully demonstrated
```

Useful capability questions:

| Capability | Evidence question |
| --- | --- |
| Read repository | Did the executor reference actual repository content? |
| Read Issue | Did it act on the governing task specification? |
| Branch | Is an isolated executor branch visible? |
| Commit | Is a substantive commit visible and attributable? |
| PR | Was a PR created to the correct base? |
| Comments/review | Can the executor participate in review where supported? |
| Actions | Can it inspect/trigger the intended automation? |
| Merge | Is merge capability intentionally allowed and proven? |
| Deploy | Is deployment evidence visible? |

## Current Reusable Executor Benchmark

The canonical current benchmark lives at:

[`knowledge-base/executor-benchmark-framework.md`](../knowledge-base/executor-benchmark-framework.md)

First bounded one-file benchmark results currently recorded there:

| Executor | End-to-end | Score /100 | Interpretation |
| --- | ---: | ---: | --- |
| ChatGPT Web | 152s | **95.0** | fastest overall for this small GitHub-native task |
| OpenAI Codex | 202s | **90.6** | strongest cloud-agent score in first snapshot |
| Anthropic Claude | 195s | **89.4** | fastest measured cloud coding agent in this task class |
| GitHub Copilot | 225s | **87.3** | fully autonomous but slower on this bounded task |
| Google Jules | 307s | **77.9** | autonomous, but slowest measured and first snapshot contained factual/governance errors |
| Gemini CLI/API | pending | pending | authentication/inference route proven; quota blocks governed completion |

Do not generalise this ranking to large coding/refactor/build tasks. The benchmark itself explicitly requires multiple future task classes.

## Why Jules Needed a Separate Issue

The first Jules activation was accidentally launched from Gemini Issue #26 and wrote Gemini evidence. That run proved Jules activation but contaminated executor provenance.

Correction:

```text
#26 = Gemini CLI/API benchmark
#63 = Google Jules coding-agent benchmark
```

The contaminated PR was preserved as historical evidence and not merged. A clean Jules run then produced PR #66.

Lesson:

> **One executor benchmark = one governing Issue + one evidence lane.**

## Review Is Part of AI Governance

Autonomous completion is not the same as accurate completion.

Jules’s first clean benchmark snapshot completed branch/commit/PR work autonomously, but review identified issues including:

- wrong governing Issue attribution;
- unsupported model attribution;
- incorrect PR-author attribution;
- wrong Gemini workflow filename;
- unproven check claims;
- unsafe `Fixes #63` close semantics.

Therefore AI benchmark scoring uses the **first review-ready snapshot**, and later human-requested corrections do not retroactively improve original quality or runtime scores.

## Agent Instructions and Fresh-Chat Discovery

Root `AGENTS.md` is the repository operating contract.

Codex-supported repository instruction loading and GitHub Copilot repository instructions can automatically surface relevant guidance in their supported contexts, but generic fresh ChatGPT/GitHub-connector chats should not be assumed to auto-load root `AGENTS.md`.

The repository README therefore exposes this bootstrap prominently:

```text
Use tbhrc/github-course. Before doing anything else,
read root AGENTS.md and follow its startup protocol
and repository workflow.
```

Do not create several competing instruction files containing divergent governance. Keep `AGENTS.md` as the shared contract and use surface-specific bootstraps to point to it.

## Actions Permission and Credential Layers

Separate:

```text
Actions source policy
= which Actions/reusable workflows may run

workflow `permissions:`
= what GITHUB_TOKEN may do

user/app/API credential
= what an external assignment/request can do

provider entitlement/policy
= whether the requested agent mode is available
```

The course’s 401/403/policy/identity failures were useful because they made these layers visible.

## Canonical AI Provider Failover & Provider-Neutral Execution

AI provider quota, rate limits (HTTP 429), or budget caps must be taught as **routine operational routing events**, never as hard blockers to delivery or review.

Governed by parent Skill `tbhrc/skills#13` / `github-agent-workflow v1.1.0`.

### Core Routing Principles

1. **Provider Neutrality:** Design workflows around outcomes and verification rather than vendor lock-in. Use preferred executors when available; failover to alternate authorized providers (Copilot, Claude, Jules, Gemini, or future agents) when quota/budget boundaries are hit.
2. **Preserve GitHub Control Plane:** Failover changes the *agent*, not the *governance*. Issue-linked branches, deterministic Action checks, review gates, and acceptance criteria remain invariant regardless of who executes or reviews.
3. **One Active Writer Safety:** Ensure strict single-writer collision safety. Never run simultaneous active coding sessions on the same work branch across multiple AI engines. Complete a clean handoff or re-route prior to secondary execution.
4. **Demonstrated Operational Patterns (1 September 2026):**
   - **Review Failover:** When Codex review hit quota exhaustion, GitHub Copilot was substituted to perform code review without waiting for quota reset.
   - **Dispatch Failover:** Applying the `jules` label on a governing Issue dispatched Google Jules autonomously when primary assignment routes were constrained.

## Failure Classification

| Evidence | Likely boundary |
| --- | --- |
| no workflow run | trigger/workflow |
| secret empty | secret name/scope/setup |
| HTTP 401 | invalid/expired credential |
| HTTP 403 | authenticated but forbidden by permission/plan/policy/eligibility |
| assignment accepted, no branch/PR | agent session/runtime |
| model HTTP 429 | provider quota/rate/billing boundary |
| PR exists, checks fail | implementation/CI |
| PR exists, facts wrong | output quality/review |

Diagnose the first broken layer. Do not treat the entire chain as one black box.

## Founder Operating Pattern

A high-value course insight is:

```text
Talk / decide in ChatGPT Web
→ create governed Issue
→ GitHub routes or dispatches
→ specialist executor works
→ PR appears
→ checks / review
→ merge
→ publish / deploy / release
```

The recurring complexity belongs in repository setup and automation so daily operation can remain simple.

## When Not to Delegate

Agent delegation has startup/provisioning overhead.

For small GitHub-native documentation/admin tasks, the benchmark currently shows ChatGPT Web can be faster than launching a cloud coding agent.

Use another executor when it provides:

- required local/runtime capability;
- code execution/build/test access;
- useful autonomy for larger work;
- a demonstrated speed/quality advantage for that task class.

Do not delegate merely because an agent exists.

## Hands-On Exercise — Executor Benchmark

Using the fixed contract in `knowledge-base/executor-benchmark-framework.md`:

1. create a dedicated Issue for the executor;
2. require root `AGENTS.md` to be read;
3. require one dedicated `integration-tests/<executor>.md` file;
4. stop at open/draft PR;
5. capture T0–T4 using durable GitHub timestamps;
6. inspect actor/session/branch/commit/PR provenance;
7. score the first review-ready snapshot;
8. preserve setup friction separately from runtime;
9. do not merge until review is complete.

## Hands-On Exercise — Diagnose a Failed Agent Route

Given a failed run:

1. identify the control surface;
2. find the trigger/workflow/session;
3. determine whether authentication succeeded;
4. identify the exact provider/agent identity;
5. identify the first failed boundary;
6. propose the smallest justified correction;
7. preserve the failed run as evidence rather than erasing it.

## Mastery Evidence

A learner demonstrates this module when they can:

- explain direct agent assignment vs Actions/agentic workflow vs model inference;
- distinguish deterministic automation from AI reasoning;
- use installed/authorised/proven as separate states;
- identify the actor/session/branch/commit/PR chain;
- safely review an AI-authored PR;
- diagnose 401/403/429/runtime/check failures by layer;
- route execution or review to an authorized alternate provider when primary quota/budget exhaustion occurs;
- enforce one-active-writer collision safety and durable handoff during provider failover;
- choose an executor based on capability and measured overhead;
- explain why one control plane can contain several execution architectures.

## References

- `knowledge-base/executor-benchmark-framework.md`
- `knowledge-base/chatgpt-web-github-control-plane.md`
- `knowledge-base/deterministic-actions-vs-agentic-ai.md`
- `knowledge-base/copilot-free-ai-in-actions.md`
- `knowledge-base/web-first-local-by-exception-executor-policy.md`
- `integration-tests/`
- `AGENTS.md`
