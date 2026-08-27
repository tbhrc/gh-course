# Executor Benchmark Framework

**Governing Issue:** #53  
**Timing redesign:** #88  
**Parent AI benchmark:** #23  
**Last verified:** 2026-08-27

## Purpose

Measure when ChatGPT Web, cloud coding agents, partner agents, Agentic Workflow engines, or local coding agents provide a real execution advantage.

The benchmark answers two different questions and must never collapse them:

1. **Operator question:** how long from launch until useful governed delivery exists?
2. **Execution question:** where was that time spent — deterministic GitHub plumbing, provider/agent execution, delivery, review or post-merge automation?

> Delegate for capability or demonstrated efficiency — not merely because another agent is available.

## Standard benchmark task

Use a bounded GitHub task with materially equivalent requirements:

1. Read root `AGENTS.md`.
2. Inspect enough repository context to identify the course and current version.
3. Create exactly one executor evidence file under `integration-tests/`.
4. Record identity, launch path, Issue/repository access, branch/commit/PR capability, comments/check visibility, limitations, and provenance.
5. Work on a non-main branch.
6. Commit the evidence.
7. Open a PR to `main`.
8. Complete the delivery mode specified by the governing Issue: review-ready stop or full lifecycle through merge and linked-Issue closure.

Executor evidence files include `chatgpt-web.md`, `github-copilot.md`, `codex.md`, `claude.md`, `jules.md`, `gemini.md`, and future local-agent equivalents.

# Timing model v2

## Rule zero

> **Wall-clock time is not AI thinking time.**

A cloud-agent run may contain GitHub workflow queueing, deterministic dispatch, provider queueing, session provisioning, repository indexing, model inference, tool calls, tests, commits, PR plumbing and review-ready finishing.

Only label an interval with what durable evidence proves.

## Lifecycle markers

| Marker | Definition |
|---|---|
| T0 | Operator benchmark launch: Issue creation for direct Web execution, or fresh dispatch/workflow start for an agent |
| T1 | Agent/session/PR first observable where available |
| T2 | PR created |
| T3 | First substantive work commit |
| T4 | Review requested or final review-ready output |
| T5 | PR merged |
| T6 | Linked governing Issue closed |

### Operator wall-clock metrics

- **Review-ready wall clock** = `T4 - T0`.
- **Full-lifecycle wall clock** = `T6 - T0` when merge/closure is required.

These remain the primary user-experience timings because queue/provisioning overhead still affects the operator. They are **not** pure AI speed.

## Execution-component markers

Use these where the route exposes them:

| Marker | Meaning | Typical evidence |
|---|---|---|
| C0 | Control event/run created | Actions `created_at`, Issue/label/task timestamp |
| C1 | Runner/provider accepts execution | first runner log, Jules acknowledgement, agent session timestamp |
| D0 | Deterministic orchestration begins | runner step/log timestamp |
| D1 | Assignment/API handoff accepted | assignment step return / next-step timestamp |
| A0 | Observable AI/provider process begins | CLI process start, or accepted cloud-agent handoff |
| A1 | First substantive agent output | agent-authored commit / captured model output |
| A2 | Agent delivery becomes review-ready | review request / final agent output / PR-ready state |
| M0 | Merge requested/recorded | PR merge timestamp |
| P0 | Post-merge deterministic automation begins | Actions run timestamp |
| P1 | Post-merge automation/deployment ends | workflow/deployment completion timestamp |

## Derived timing buckets

### 1. Control / runner latency

`C1 - C0`

Time for GitHub/provider infrastructure to start the execution environment.

### 2. Deterministic orchestration

`D1 - D0`

Examples:

- resolve Issue number;
- credential preflight;
- checkout/setup;
- assignment API request;
- deterministic packaging.

### 3. Observable provider / agent interval

For cloud agents, usually `A1 - D1` or `A2 - D1`.

This is a **black box** that can contain provider queueing, provisioning, indexing, model inference, tools and tests. It is not pure model compute.

### 4. AI-process interval inside Actions

When a CLI/model process is executed inside a timed Actions step, the step duration is directly observable. It still includes client/network/API overhead and therefore must be called **AI-process duration**, not model-thinking time.

### 5. Deterministic delivery / post-processing

Known GitHub/API work after model/agent output: posting comments, packaging artifacts, explicit PR API calls, merge, Pages/Wiki/release automation where separable.

### 6. Pure model compute

Record only when the provider exposes trustworthy model-active telemetry.

For the current cloud-agent benchmarks:

**Pure model compute = unknown.**

Do not estimate it by subtraction.

# Timing evidence audit — 27 August 2026

## Dispatch/agent timing audit

The table below separates physically observable clocks. Rounded figures use durable Actions logs and GitHub timestamps. `Unknown` means the platform does not expose that boundary.

| Executor / route | Control → runner/accept | Deterministic orchestration / handoff | Observable provider / AI-process interval | Delivery tail | Pure model compute | Review-ready wall clock | Confidence |
|---|---:|---:|---:|---:|---:|---:|---|
| GitHub Copilot cloud agent — run `33080345287` | ~5s to runner log | ~2s assignment API; ~3s including success comment | ~160s accepted handoff → first substantive commit | 58s commit → review-ready | Unknown | **225s** | High for GitHub clocks; model split unavailable |
| OpenAI Codex Partner Agent — run `33081457803` | ~4s to runner log | ~2s assignment API; ~5s through success comment | ~160s accepted handoff → first substantive commit | 36s commit → review-ready | Unknown | **202s** | High for GitHub clocks; model split unavailable |
| Anthropic Claude Partner Agent — run `33083260139` | ~6s to runner log | ~2s assignment API; ~3s including success comment | ~129–130s accepted handoff → first substantive commit | 58s commit → review-ready | Unknown | **195s** | High for GitHub clocks; model split unavailable |
| Google Jules — Issue #63 | 5s label → accepted task | n/a — no Actions dispatcher | 297s accepted task → substantive commit | 5s commit → PR/review-ready | Unknown | **307s** | High for task/commit/PR clocks; provider internals unavailable |
| Copilot CLI in Actions — run `33076875845` | ~4s to runner log | ~5s checkout/install/prompt setup before AI process | **~17s Copilot CLI AI-process step** | ~2s post response + cleanup | Unknown | n/a — different text-only task | High; process step directly timed |
| Gemini CLI in Actions — run `33092569081` | ~6s to runner log | ~16s checkout + Gemini CLI install before CLI process | **244.8s failed Gemini CLI process** | ~1s comment + cleanup | Unknown | Failed / unscored | High; interval dominated by quota retry/failure handling |
| ChatGPT Web / Work Mode direct GitHub | n/a | n/a — no Actions dispatcher | Not independently exposed | GitHub tool/API operations are interleaved with model work | Unknown | See applicable row | Low for internal split; high for total wall clock |

### Exact forensic observations

**Copilot cloud** — run `33080345287`:
- run created `14:05:45Z`;
- runner log begins `14:05:49.809Z`;
- assignment command begins `14:05:50.099Z`;
- next deterministic success step begins `14:05:51.651Z`;
- success comment completes `14:05:52.674Z`;
- substantive commit evidence appears `14:08:32Z`;
- review-ready `14:09:30Z`.

**Codex** — run `33081457803`:
- run created `14:17:57Z`;
- runner log begins `14:18:00.820Z`;
- assignment command begins `14:18:01.085Z`;
- success step begins `14:18:03.184Z`;
- success comment completes `14:18:05.670Z`;
- substantive commit evidence appears `14:20:43Z`;
- review-ready `14:21:19Z`.

**Claude** — run `33083260139`:
- run created `14:37:24Z`;
- runner log begins `14:37:29.816Z`;
- assignment command begins `14:37:30.083Z`;
- success step begins `14:37:31.935Z`;
- success comment completes `14:37:32.977Z`;
- substantive commit evidence appears `14:39:41Z`;
- review-ready `14:40:39Z`.

**Copilot CLI** — run `33076875845`:
- run created `13:26:59Z`;
- runner log begins `13:27:03.105Z`;
- checkout/install/prompt preparation reaches AI process at `13:27:08.256Z`;
- next deterministic post step begins `13:27:25.228Z`;
- AI-process duration is therefore about **17 seconds**;
- Issue comment completes `13:27:26.883Z`.

**Gemini CLI** — run `33092569081`:
- run created `16:18:49Z`;
- runner log begins `16:18:54.647Z`;
- Gemini CLI process begins `16:19:10.549Z` after checkout/install;
- process fails at `16:23:15.340Z` — **244.8 seconds**;
- logs show repeated quota waits and HTTP 429 before terminal quota failure.

## What this changes in interpretation

The deterministic GitHub dispatcher is **not** responsible for most of the 3–5 minute cloud-agent runtime.

For Copilot, Codex and Claude, the assignment API itself took only about **2 seconds**. Even including runner startup and success-comment plumbing, deterministic orchestration is only a small fraction of total wall clock.

The largest measured interval is after successful handoff:

| Cloud executor | Accepted handoff → first substantive commit |
|---|---:|
| **Claude** | **~130s** |
| **Codex** | **~160s** |
| **Copilot** | **~160s** |
| **Jules** | **297s** from accepted task → commit |

This is the fairest currently observable **provider/agent-path speed comparison**, but it still must not be called raw model inference time.

# 100-point operator-usefulness score

The composite score answers:

> **How useful was this executor to the operator for this exact benchmark task?**

It does **not** rank raw model intelligence or pure model speed.

| Dimension | Weight | Scoring rule |
|---|---:|---|
| Operator wall-clock efficiency | 30 | `30 × fastest review-ready wall clock / executor review-ready wall clock`, capped at 30 |
| Task fidelity | 20 | Exact requested scope, file, branch, PR and stop conditions |
| Output quality | 15 | Required evidence completeness, factual accuracy and clarity |
| Reliability | 10 | Operational-run errors/retries/recovery |
| Autonomy | 10 | Human steering required after launch |
| Governance compliance | 5 | Issue → branch → commit → PR; no unauthorised main/self-merge |
| Provenance/observability | 5 | Exact actor/session/branch/commit/PR evidence visible |
| Efficiency/overhead | 5 | Avoided unnecessary steps, files, duplicated work and preventable calls |

The existing scores remain numerically unchanged because the same user-observed T0→T4 metric is retained; only its meaning is corrected from ambiguous “speed” to **operator wall-clock efficiency**.

## Detailed scoring rules

### Task fidelity — 20
- 5: correct evidence file/scope
- 3: Issue/task specification followed
- 3: non-main branch
- 3: meaningful commit
- 3: PR to correct base
- 3: requested delivery/stop condition respected

### Output quality — 15
- 8: all required fields answered
- 4: factual claims match evidence
- 3: concise and usable

Score the **first review-ready snapshot**. Later review corrections do not retroactively improve quality or runtime.

### Reliability — 10
- 10: no operational errors/retries
- 8: one recoverable error/retry
- 6: two recoverable errors/retries
- 3: repeated intervention
- 0: no review-ready output

Setup/entitlement failures before the first operational run remain **setup friction**, not execution reliability.

### Autonomy — 10
- 10: no human steering after launch
- 7: one correction before review-ready
- 4: multiple interventions
- 0: human completed the task

### Governance — 5
- 5: complete governed path and requested delivery mode
- 3: minor deviation without main-branch risk
- 0: direct-main/self-merge or missing work contract

### Provenance — 5
- 5: executor identity/session + branch/commit/PR/timestamps visible
- 4: durable objects visible but identity partly collapses
- 2: partial
- 0: unverifiable

### Efficiency — 5
- 5: minimal necessary operations
- 4: one minor avoidable action
- 3: noticeable startup/process overhead
- 1: substantial unnecessary work
- 0: waste materially undermines usefulness

# Setup friction — separate from runtime

Record plan/entitlement, policy toggles, app authorisation, token/secret setup, failed pre-operational attempts, human configuration, and stale identities/routes separately.

| Executor | Setup friction before operational run |
|---|---|
| ChatGPT Web | Connected GitHub integration already operational. |
| GitHub Copilot | Free-plan cloud assignment returned 403; Copilot Pro unlocked assignment. |
| OpenAI Codex | Paid Copilot was insufficient until **Allow Codex coding agent** Partner Agent policy was enabled. |
| Anthropic Claude | Correct current Partner Agent identity `anthropic-code-agent[bot]` was required after a stale bot identity failed. |
| Google Jules | Account-wide Jules GitHub authorisation required; accidental first run from Gemini Issue #26 preserved but excluded from clean score. |
| Gemini CLI | `GEMINI_API_KEY` authentication proven; current blocker is provider quota/billing, not GitHub authentication. |

# Baseline results — bounded one-file evidence task

## Durable timing evidence

| Executor | T0 | PR | First substantive output | Review-ready | Review-ready wall clock |
|---|---|---|---|---|---:|
| ChatGPT Web | Issue #53 `14:24:06Z` | PR #54 `14:25:39Z` | commit `9453cb6` `14:25:23Z` | corrected final commit `5330f63` `14:26:38Z` | **152s** |
| Anthropic Claude | run `33083260139` `14:37:24Z` | PR #58 `14:37:37Z` | commit evidence `14:39:41Z` | review request `14:40:39Z` | **195s** |
| OpenAI Codex | run `33081457803` `14:17:57Z` | PR #52 `14:18:08Z` | commit evidence `14:20:43Z` | review request `14:21:19Z` | **202s** |
| GitHub Copilot | run `33080345287` `14:05:45Z` | PR #51 `14:05:56Z` | commit evidence `14:08:32Z` | review request `14:09:30Z` | **225s** |
| Google Jules | label #63 `16:40:39Z` | PR #66 `16:45:46Z` | commit `8d712e3` `16:45:41Z` | PR #66 `16:45:46Z` | **307s** |
| Gemini CLI/API | authenticated run `33092569081` | — | — | — | failed / pending quota |
| Local coding agent | — | — | — | — | pending |

# Full-lifecycle results — governed delivery

Do not compare a review-ready T4 run with a full-lifecycle T6 run as identical scope.

| Executor | Model / surface | Governing Issue | PR | T0 | T5 merge | T6 Issue closed | Full-lifecycle time | Review evidence |
|---|---|---|---|---|---|---|---:|---|
| ChatGPT Work Mode | GPT-5.6 Terra / light Work Mode | #80 | #81 | `17:22:49Z` | `17:26:01Z` | `17:26:02Z` | **193s** | No independent GitHub review object observed; merge followed direct diff inspection. |

The former #74 / PR #75 attempt is invalid for full-lifecycle comparison because it stopped before merge/Issue closure.

# Initial scored leaderboard

`Operator wall-clock /30` uses the fastest current review-ready operational result: ChatGPT Web at 152 seconds.

| Executor | Operator wall-clock /30 | Fidelity /20 | Quality /15 | Reliability /10 | Autonomy /10 | Governance /5 | Provenance /5 | Efficiency /5 | Total /100 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| **ChatGPT Web** | 30.0 | 20 | 14 | 8 | 10 | 5 | 4 | 4 | **95.0** |
| **OpenAI Codex** | 22.6 | 20 | 15 | 10 | 10 | 5 | 5 | 3 | **90.6** |
| **Anthropic Claude** | 23.4 | 20 | 13 | 10 | 10 | 5 | 5 | 3 | **89.4** |
| **GitHub Copilot** | 20.3 | 20 | 14 | 10 | 10 | 5 | 5 | 3 | **87.3** |
| **Google Jules** | 14.9 | 20 | 12 | 10 | 10 | 3 | 4 | 4 | **77.9** |
| Gemini CLI/API | pending | pending | pending | pending | pending | pending | pending | pending | pending |
| Local coding agent | pending | pending | pending | pending | pending | pending | pending | pending | pending |

## Quality notes

Claude’s first review-ready snapshot contained material factual/provenance errors, including an inaccurate Partner Agent billing/plan description and omission of the deterministic assignment run. Its quality remains 13/15 despite later correction.

Jules completed autonomously but its first snapshot misattributed the governing Issue, model visibility, PR authorship and Gemini workflow path, claimed unproven checks, and initially used an unsafe `Fixes #63` closing keyword. Later corrections do not improve the original 307-second result.

# Two leaderboards, not one

## A. Operator usefulness

Use the composite 100-point score above. It includes wall-clock latency, quality, reliability, autonomy and governance.

## B. Observable agent-path latency

Use the timing-audit table when asking which asynchronous agent/provider path produced substantive work fastest after successful handoff.

Current first-output ordering among comparable cloud coding-agent routes:

1. **Claude ~130s**
2. **Codex ~160s**
3. **Copilot ~160s**
4. **Jules 297s**

Do not include ChatGPT Web in this second ranking because its internal model/tool intervals are not independently exposed in the same way.

# Full lifecycle decomposition

For future T6 benchmarks, separately record:

```text
T0 launch
→ deterministic dispatch / provider acceptance
→ agent/provider interval
→ PR review-ready
→ human/review interval
→ deterministic merge
→ post-merge Actions
→ Wiki / Pages / release / deployment
→ governing Issue closure
```

A deterministic merge, packaging step or Pages deployment must not be charged to “AI runtime”. Conversely, provider queue/provisioning remains part of operator wall clock even when pure model time is unavailable.

# Future benchmark evidence contract

Every new agent benchmark should record where available:

- control/run created timestamp;
- runner/provider accepted timestamp;
- assignment/API handoff accepted timestamp;
- AI/CLI process start/end if directly observable;
- first agent-authored substantive commit/output;
- PR creation;
- review-ready marker;
- merge;
- linked Issue closure;
- post-merge workflow/deployment start/end;
- retries/errors;
- which intervals are deterministic, provider black box, AI-process, human review, or unknown.

Never infer missing model-active time.

# Execution-mode fairness

Routes differ:

- ChatGPT Web: direct connected GitHub operations.
- GitHub Copilot: native GitHub cloud coding agent.
- Claude/Codex: GitHub Partner Agents powered through Copilot.
- Jules: Google Labs cloud coding agent via Issue label/App.
- Gemini CLI/API: CLI inside GitHub Actions using provider API credentials/quota.
- Local agents: local runtime with GitHub as durable control/evidence plane.

The benchmark compares operator productivity while preserving execution mode. Identical task text does not imply identical infrastructure.

# Future benchmark classes

Repeat across:

1. GitHub administration/documentation
2. Small code change
3. Multi-file refactor
4. Build/test/debug
5. Repository-wide research
6. Actions/workflow change
7. Local-runtime/filesystem work

Only change routing policy when repeated evidence shows a meaningful advantage by task class.

# Governing principle

> **Fastest capable executor wins only when quality, governance and reliability remain acceptable — and wall-clock latency must never be misrepresented as pure AI compute time.**
