# Executor Benchmark Framework

**Governing Issue:** #53  
**Parent AI benchmark:** #23  
**Last verified:** 2026-08-27

## Purpose

Measure when ChatGPT Web, cloud coding agents, partner agents, Agentic Workflow engines, or local coding agents provide a real execution advantage.

The benchmark exists to support one routing rule:

> Delegate for capability or demonstrated efficiency — not merely because another agent is available.

## Standard benchmark task

Use a bounded GitHub task with materially equivalent requirements:

1. Read root `AGENTS.md`.
2. Inspect enough repository context to identify the course and current version.
3. Create exactly one executor evidence file under `integration-tests/`.
4. Record identity, launch path, Issue/repository access, branch/commit/PR capability, comments/check visibility, limitations, and provenance.
5. Work on a non-main branch.
6. Commit the evidence.
7. Open a draft/open PR to `main`.
8. Stop before merge.

Executor evidence files:

- ChatGPT Web: `integration-tests/chatgpt-web.md`
- GitHub Copilot: `integration-tests/github-copilot.md`
- OpenAI Codex: `integration-tests/codex.md`
- Claude: `integration-tests/claude.md`
- Gemini: `integration-tests/gemini.md`
- Local agents: `integration-tests/<agent>-local.md`

## Clock model

Use durable GitHub/email timestamps, never conversational estimates.

| Marker | Definition |
|---|---|
| T0 | Executor benchmark launch: Issue creation for direct Web execution, or fresh operational dispatch/workflow start for an agent |
| T1 | Session/agent branch becomes observable where available |
| T2 | PR created |
| T3 | First substantive work commit |
| T4 | Review requested or final review-ready output |

### Primary speed metric

`End-to-end time = T4 - T0`

Cloud-agent provisioning and startup latency count because they affect real operator productivity.

### Secondary metrics

- `T2 - T0` — time to visible PR/session
- `T3 - T0` — time to first substantive output
- `T4 - T3` — finishing/review overhead
- failed operations/retries
- human interventions after launch
- files changed
- commits produced
- setup/configuration events before an operational run

## 100-point scoring matrix

| Dimension | Weight | Scoring rule |
|---|---:|---|
| End-to-end speed | 30 | `30 × fastest operational time / executor time`, capped at 30 |
| Task fidelity | 20 | Exact requested scope, file, branch, PR and stop conditions |
| Output quality | 15 | Required evidence completeness, factual accuracy and clarity |
| Reliability | 10 | Operational-run errors/retries/recovery |
| Autonomy | 10 | Human steering required after launch |
| Governance compliance | 5 | Issue → branch → commit → PR; no direct-main/self-merge |
| Provenance/observability | 5 | Exact actor/session/branch/commit/PR evidence visible |
| Efficiency/overhead | 5 | Avoided unnecessary steps, files, duplicated work and preventable calls |

## Detailed scoring rules

### Task fidelity — 20

- 5: correct requested evidence file/scope
- 3: Issue/task specification read and followed
- 3: non-main branch used
- 3: meaningful commit produced
- 3: PR opened to correct base
- 3: stop condition respected; no self-merge/unauthorised close

### Output quality — 15

- 8: all required benchmark fields answered
- 4: factual claims match observable evidence
- 3: concise, clear and usable evidence

Score the **first review-ready snapshot**. Later corrections prompted by human review do not retroactively improve the original quality score or execution time.

### Reliability — 10

- 10: no operational-run errors or retries
- 8: one recoverable error/retry
- 6: two recoverable errors/retries
- 3: repeated intervention required
- 0: failed to produce review-ready output

Entitlement/setup failures before the first operational run are tracked as **setup friction**, not execution reliability.

### Autonomy — 10

- 10: no human steering after launch
- 7: one human correction/intervention before review-ready output
- 4: multiple interventions before review-ready output
- 0: human had to complete the task

Post-T4 code review and requested corrections are normal review activity and do not change the original autonomy score.

### Governance — 5

- 5: complete governed path and stop condition
- 3: minor governance deviation with no main-branch risk
- 0: direct-main/self-merge or missing durable work contract

### Provenance — 5

- 5: distinct executor identity/session plus branch/commit/PR/timestamps visible
- 4: durable GitHub objects visible but executor and human identity partially collapse
- 2: partial provenance
- 0: unverifiable

### Efficiency/overhead — 5

- 5: minimal necessary operations
- 4: one minor avoidable action/correction
- 3: noticeable startup/process overhead
- 1: substantial unnecessary work
- 0: waste materially undermines usefulness

## Setup friction — tracked separately

Do not mix account/configuration setup with runtime performance. Record:

- plan/entitlement required
- policy toggles required
- app installation/authorisation
- token/secret setup
- failed pre-operational attempts
- human configuration steps
- wrong or stale agent identities/routes

This lets the benchmark answer two different questions:

1. **How hard is the executor to make operational?**
2. **Once operational, how efficiently does it complete work?**

### Setup-friction evidence observed so far

| Executor | Setup friction before operational run |
|---|---|
| ChatGPT Web | Connected GitHub integration already operational. |
| GitHub Copilot | Free-plan native cloud assignment returned 403; Copilot Pro upgrade unlocked assignment. |
| OpenAI Codex | Paid Copilot was not enough until **Allow Codex coding agent** Partner Agent policy was enabled. |
| Anthropic Claude | Partner policy was enabled, but first dispatcher used stale/older `claude[bot]` identity and returned 403; current Partner Agent identity `anthropic-code-agent[bot]` succeeded. |
| Google Gemini CLI | Workflow route proven, but first preflight stopped before inference because `GEMINI_API_KEY` is not configured. Runtime score remains pending. |

## Baseline results — bounded one-file evidence task

### Durable timing evidence

| Executor | T0 | PR | First substantive output | Review-ready | End-to-end |
|---|---|---|---|---|---:|
| ChatGPT Web | Issue #53 created `14:24:06Z` | PR #54 `14:25:39Z` | commit `9453cb6` `14:25:23Z` | corrected final commit `5330f63` `14:26:38Z` | **2m32s / 152s** |
| Anthropic Claude | dispatch run `33083260139` `14:37:24Z` | PR #58 `14:37:37Z` | commit `79fdb89` notification `14:39:41Z` | review request `14:40:39Z` | **3m15s / 195s** |
| OpenAI Codex | dispatch run `33081457803` `14:17:57Z` | PR #52 `14:18:08Z` | commit `b19574f` notification `14:20:43Z` | review request `14:21:19Z` | **3m22s / 202s** |
| GitHub Copilot | dispatch run `33080345287` `14:05:45Z` | PR #51 `14:05:56Z` | commit `934590d` notification `14:08:32Z` | review request `14:09:30Z` | **3m45s / 225s** |
| Gemini | — | — | — | — | pending credential |
| Local coding agent | — | — | — | — | pending |

## Initial scored leaderboard

Speed uses the fastest current operational result, ChatGPT Web at 152 seconds.

| Executor | Speed /30 | Fidelity /20 | Quality /15 | Reliability /10 | Autonomy /10 | Governance /5 | Provenance /5 | Efficiency /5 | Total /100 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| **ChatGPT Web** | 30.0 | 20 | 14 | 8 | 10 | 5 | 4 | 4 | **95.0** |
| **OpenAI Codex** | 22.6 | 20 | 15 | 10 | 10 | 5 | 5 | 3 | **90.6** |
| **Anthropic Claude** | 23.4 | 20 | 13 | 10 | 10 | 5 | 5 | 3 | **89.4** |
| **GitHub Copilot** | 20.3 | 20 | 14 | 10 | 10 | 5 | 5 | 3 | **87.3** |
| Gemini | pending | pending | pending | pending | pending | pending | pending | pending | pending |
| Local coding agent | pending | pending | pending | pending | pending | pending | pending | pending | pending |

### Claude quality note

Claude's first review-ready snapshot satisfied the requested one-file scope and governance path, but its evidence contained material factual/provenance errors: it incorrectly described the GitHub Partner Agent as unrelated to the Copilot plan/billing path and omitted the deterministic Actions assignment run that launched the operational session. A post-T4 review requested corrections. The benchmark score therefore uses 13/15 quality and preserves the original 195-second runtime.

## Interpretation of the first result

For this small one-file GitHub evidence task, ChatGPT Web is currently the fastest overall executor despite one recoverable self-review error and one evidence correction.

The cloud agents showed useful autonomous behaviour and stronger distinct-agent provenance, but their session provisioning/planning overhead made them slower for this task class. Among the operational cloud coding agents measured so far, Claude was fastest, Codex scored highest overall because its first evidence snapshot was more accurate, and Copilot was slowest on this bounded task.

This result must **not** be generalised to large coding, test, build, refactor or local-runtime tasks until those task classes are benchmarked separately.

## Execution-mode fairness

Not every executor reaches GitHub through the same product surface:

- ChatGPT Web: direct connected GitHub operations.
- GitHub Copilot: native GitHub cloud coding agent.
- Claude/Codex: GitHub Partner Agents powered through Copilot.
- Gemini: Gemini CLI inside GitHub Actions / Agentic Workflow class, requiring a Gemini credential.
- Local agents: local runtime with GitHub as durable control/evidence plane.

The benchmark compares operator-visible end-to-end productivity while preserving execution mode as a separate field. Do not imply identical architecture merely because two executors receive the same task.

## Future benchmark classes

Run the same executor matrix across at least these classes:

1. GitHub administration / documentation
2. Small code change
3. Multi-file refactor
4. Build/test/debug task
5. Repository-wide research
6. Actions/workflow change
7. Local-runtime/filesystem task

A routing policy should be changed only when repeated evidence shows a meaningful advantage by task class.

## Next agents

- Gemini: existing Issue #26 and workflow `Benchmark Gemini CLI Executor`; add repository Actions secret `GEMINI_API_KEY` from Google AI Studio, then rerun from a fresh dispatch branch. Runtime timing starts only when Gemini inference actually runs.
- Local agents: benchmark later with the same T0–T4 clock and identical evidence requirements.

## Governing principle

> Fastest capable executor wins only when quality, governance and reliability remain acceptable.
